--!strict
-- Shared module sample (ReplicatedStorage.Shared.Hello)
-- 서버/클라이언트 양쪽에서 require 가능한 공유 모듈 예시입니다.

local Hello = {}

function Hello.greet(who: string): string
	return string.format("Hello Rojo, %s!", who)
end

return Hello
