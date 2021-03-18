defmodule NCAA do
  @matchups [
    [1, 16],
    [8, 9],
    [5, 12],
    [4, 13],
    [6, 11],
    [3, 14],
    [7, 10],
    [2, 15]
  ]

  @data %{
    1 => %{
      1 => 50.0,
      2 => 53.3,
      3 => 62.5,
      4 => 70.7,
      5 => 83.3,
      6 => 68.8,
      7 => 85.7,
      8 => 80.2,
      9 => 90.0,
      10 => 85.7,
      11 => 57.1,
      12 => 100.0,
      13 => 100.0,
      14 => 0.0,
      15 => 0.0,
      16 => 99.3
    },
    2 => %{
      1 => 46.7,
      2 => 50.0,
      3 => 60.3,
      4 => 44.4,
      5 => 16.7,
      6 => 72.2,
      7 => 70.1,
      8 => 44.4,
      9 => 50.0,
      10 => 63.3,
      11 => 87.5,
      12 => 100.0,
      13 => 0.0,
      14 => 0.0,
      15 => 94.3,
      16 => 0.0
    },
    3 => %{
      1 => 37.5,
      2 => 39.7,
      3 => 50.0,
      4 => 62.5,
      5 => 50.0,
      6 => 57.8,
      7 => 61.1,
      8 => 100.0,
      9 => 100.0,
      10 => 69.2,
      11 => 69.1,
      12 => 0.0,
      13 => 0.0,
      14 => 85.0,
      15 => 100.0,
      16 => 0.0
    },
    4 => %{
      1 => 29.3,
      2 => 55.6,
      3 => 37.5,
      4 => 50.0,
      5 => 55.8,
      6 => 33.3,
      7 => 33.3,
      8 => 36.4,
      9 => 50.0,
      10 => 100.0,
      11 => 0.0,
      12 => 70.7,
      13 => 79.9,
      14 => 0.0,
      15 => 0.0,
      16 => 0.0
    },
    5 => %{
      1 => 16.7,
      2 => 83.3,
      3 => 50.0,
      4 => 44.2,
      5 => 50.0,
      6 => 100.0,
      7 => 0.0,
      8 => 25.0,
      9 => 25.0,
      10 => 100.0,
      11 => 0.0,
      12 => 66.9,
      13 => 82.4,
      14 => 0.0,
      15 => 0.0,
      16 => 0.0
    },
    6 => %{
      1 => 31.3,
      2 => 27.8,
      3 => 42.2,
      4 => 66.7,
      5 => 0.0,
      6 => 0.0,
      7 => 62.5,
      8 => 25.0,
      9 => 0.0,
      10 => 60.0,
      11 => 63.8,
      12 => 0.0,
      13 => 0.0,
      14 => 87.5,
      15 => 0.0,
      16 => 0.0
    },
    7 => %{
      1 => 14.3,
      2 => 29.9,
      3 => 38.9,
      4 => 66.7,
      5 => 0.0,
      6 => 37.5,
      7 => 0.0,
      8 => 50.0,
      9 => 0.0,
      10 => 60.4,
      11 => 0.0,
      12 => 0.0,
      13 => 0.0,
      14 => 100.0,
      15 => 66.7,
      16 => 0.0
    },
    8 => %{
      1 => 19.8,
      2 => 55.6,
      3 => 0.0,
      4 => 63.6,
      5 => 75.0,
      6 => 75.0,
      7 => 50.0,
      8 => 0.0,
      9 => 51.2,
      10 => 0.0,
      11 => 100.0,
      12 => 0.0,
      13 => 100.0,
      14 => 0.0,
      15 => 0.0,
      16 => 0.0
    },
    9 => %{
      1 => 10.0,
      2 => 50.0,
      3 => 0.0,
      4 => 50.0,
      5 => 75.0,
      6 => 0.0,
      7 => 0.0,
      8 => 48.8,
      9 => 0.0,
      10 => 100.0,
      11 => 0.0,
      12 => 0.0,
      13 => 100.0,
      14 => 0.0,
      15 => 0.0,
      16 => 100.0
    },
    10 => %{
      1 => 14.3,
      2 => 36.7,
      3 => 30.8,
      4 => 0.0,
      5 => 0.0,
      6 => 40.0,
      7 => 39.6,
      8 => 0.0,
      9 => 0.0,
      10 => 0.0,
      11 => 33.3,
      12 => 0.0,
      13 => 0.0,
      14 => 100.0,
      15 => 100.0,
      16 => 0.0
    },
    11 => %{
      1 => 42.9,
      2 => 12.5,
      3 => 30.9,
      4 => 0.0,
      5 => 0.0,
      6 => 36.3,
      7 => 100.0,
      8 => 0.0,
      9 => 100.0,
      10 => 66.7,
      11 => 0.0,
      12 => 0.0,
      13 => 0.0,
      14 => 100.0,
      15 => 0.0,
      16 => 0.0
    },
    12 => %{
      1 => 0.0,
      2 => 0.0,
      3 => 0.0,
      4 => 29.3,
      5 => 33.1,
      6 => 0.0,
      7 => 0.0,
      8 => 100.0,
      9 => 0.0,
      10 => 0.0,
      11 => 0.0,
      12 => 0.0,
      13 => 75.0,
      14 => 0.0,
      15 => 0.0,
      16 => 0.0
    },
    13 => %{
      1 => 0.0,
      2 => 0.0,
      3 => 0.0,
      4 => 20.1,
      5 => 17.6,
      6 => 0.0,
      7 => 0.0,
      8 => 0.0,
      9 => 0.0,
      10 => 0.0,
      11 => 0.0,
      12 => 25.0,
      13 => 0.0,
      14 => 0.0,
      15 => 0.0,
      16 => 0.0
    },
    14 => %{
      1 => 0.0,
      2 => 0.0,
      3 => 15.0,
      4 => 0.0,
      5 => 0.0,
      6 => 12.5,
      7 => 0.0,
      8 => 0.0,
      9 => 0.0,
      10 => 0.0,
      11 => 0.0,
      12 => 0.0,
      13 => 0.0,
      14 => 0.0,
      15 => 0.0,
      16 => 0.0
    },
    15 => %{
      1 => 0.0,
      2 => 5.7,
      3 => 0.0,
      4 => 0.0,
      5 => 0.0,
      6 => 0.0,
      7 => 33.3,
      8 => 0.0,
      9 => 0.0,
      10 => 0.0,
      11 => 0.0,
      12 => 0.0,
      13 => 0.0,
      14 => 0.0,
      15 => 0.0,
      16 => 0.0
    },
    16 => %{
      1 => 0.7,
      2 => 0.0,
      3 => 0.0,
      4 => 0.0,
      5 => 0.0,
      6 => 0.0,
      7 => 0.0,
      8 => 0.0,
      9 => 0.0,
      10 => 0.0,
      11 => 0.0,
      12 => 0.0,
      13 => 0.0,
      14 => 0.0,
      15 => 0.0,
      16 => 0.0
    }
  }

  def resolve([[winner]], _) when not is_list(winner), do: winner

  def resolve([team_a, team_b], pid) when not is_list(team_a) do
    resolve(team_a, team_b, pid)
  end

  def resolve(matchups, pid) do
    [[{name, _}, _] | _] = matchups

    round =
      cond do
        not String.starts_with?(name, "Seed") and length(matchups) == 2 -> "Final Four"
        not String.starts_with?(name, "Seed") and length(matchups) == 1 -> "Final"
        length(matchups) === 8 -> "First Round"
        length(matchups) === 4 -> "Second Round"
        length(matchups) === 2 -> "Sweet 16"
        length(matchups) === 1 -> "Elite 8"
      end
      |> String.pad_trailing(21, "-")

    IO.puts(pid, round)

    matchups
    |> Enum.map(fn [team_a, team_b] -> resolve(team_a, team_b, pid) end)
    |> Enum.chunk_every(2)
    |> resolve(pid)
  end

  def resolve({name_a, team_a} = a, {name_b, team_b} = b, pid) do
    team_a_win_pct = @data[team_a][team_b]

    seed_text =
      if team_a_win_pct != 0.0 do
        "#{team_a} seeds beat #{team_b} seeds #{team_a_win_pct}% of the time"
      else
        winner = Enum.min([team_a, team_b])
        "No data for #{team_a} seeds vs #{team_b} seeds. Assuming #{winner} wins"
      end

    if :rand.uniform() * 100 < team_a_win_pct or (team_a_win_pct == 0.0 and team_a < team_b) do
      IO.puts(pid, String.pad_trailing("#{name_a} beats #{name_b}", 21) <> "\t" <> seed_text)
      a
    else
      IO.puts(pid, String.pad_trailing("#{name_b} beats #{name_a}", 21) <> "\t" <> seed_text)
      b
    end
  end

  def play(pid) do
    IO.puts(
      pid,
      "\nData from 'http://mcubed.net/ncaab/seeds.shtml'. Not guaranteed to be accurate.\n"
    )

    IO.puts(
      pid,
      "Source code at 'https://github.com/joseph-lozano/ncaa_predictor'\n"
    )

    [{_, w}, {_, e}, {_, s}, {_, m}] =
      ["WEST", "EAST", "SOUTH", "MIDWEST"]
      |> Enum.map(fn region ->
        IO.puts(pid, "\n" <> region)

        @matchups
        |> Enum.map(fn [a, b] ->
          name_a = "Seed #{a}"
          name_b = "Seed #{b}"
          [{name_a, a}, {name_b, b}]
        end)
        |> resolve(pid)
      end)

    IO.puts(pid, "\n\nFINAL FOUR\n")
    IO.puts(pid, "WEST: #{w} EAST: #{e}, SOUTH: #{s} MIDWEST: #{m}\n")

    resolve([[{"WEST", w}, {"EAST", e}], [{"SOUTH", s}, {"MIDWEST", m}]], pid)
  end
end
