require "thread"

def get_parsed(ddsk, expected)
  q = Queue.new
  q.push({ parsed: expected, current: "" })
  results = []
  while !q.empty?
    poped = q.pop
    parsed = poped[:parsed]
    if parsed.empty?
      results.push(poped[:current])
    else
      ddsk.each_with_index do |s, idx|
        if parsed.start_with?(s)
          q.push({
            parsed: parsed.slice(s.length..-1),
            current: poped[:current] + idx.to_s,
          })
        end
      end
    end
  end

  if results.empty?
    raise "Cannot parse #{expected} by #{ddsk}"
  end
  return results
end

def ddsk_iter(ddsk, expected)
  r = Random.new
  end_candidates = get_parsed(ddsk, expected)
  mask = end_candidates.max { |x, y| x.length <=> y.length }.length
  bits = ""
  while !bits.end_with?(*end_candidates)
    n = r.rand(0..ddsk.length - 1)
    bits = bits + n.to_s
    if bits.length > mask
      bits = bits.slice(-1 * mask..-1)
    end

    yield ddsk[n]
  end
end

if $0 == __FILE__
  ddsk = ["ドド", "スコ"]
  ddsk_iter(ddsk, "ドドスコスコスコ" * 3) do |res|
    print res
  end
  puts "ラブ注入♡"
end
