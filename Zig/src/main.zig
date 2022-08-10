const std = @import("std");

const DDSK = 0b0111_0111_0111;
const MASK = 0b1111_1111_1111;

const ddsk = [_][]const u8{ "ドド", "スコ" };

pub fn main() !void {
    const stdout_file = std.io.getStdOut().writer();
    var bw = std.io.bufferedWriter(stdout_file);
    const stdout = bw.writer();
    var rand = std.rand.DefaultPrng.init(@intCast(u64, std.time.milliTimestamp()));

    var buffer: usize = 0;
    while (buffer != DDSK) {
        const index = rand.random().int(usize) % ddsk.len;
        try stdout.print("{s}", .{ddsk[index]});
        buffer = (buffer << 1) & MASK | index;
    }
    try stdout.print("ラブ注入♡\n", .{});
    try bw.flush();
}
