const std = @import("std");
const RndGen = std.rand.DefaultPrng;

const DDSK = 0b0111_0111_0111;
const MASK = 0b1111_1111_1111;

const ddsk = [_][]const u8 { "ドド", "スコ" };

pub fn main() !void {
  var bufferedWriter = std.io.bufferedWriter(std.io.getStdOut().writer());
  var writer = bufferedWriter.writer();
  var rand = RndGen.init(0);

  var buffer: usize = 0;
  while (buffer != DDSK) {
    const index = rand.random().int(usize) % ddsk.len;
    try writer.print("{s}", .{ddsk[index]});
    buffer = (buffer << 1) & MASK | index;
  }
  try writer.print("ラブ注入\n", .{});
  try bufferedWriter.flush();
}
