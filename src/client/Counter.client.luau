--!strict
-- Client counter (StarterPlayer.StarterPlayerScripts.Client.Counter)
-- 1초마다 숫자를 1씩 증가시켜 출력합니다.

local count = 0

while true do
	count += 1
	print(count)
	task.wait(1)
end
