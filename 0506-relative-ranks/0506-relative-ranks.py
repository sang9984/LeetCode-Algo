import heapq

class Solution:
    def findRelativeRanks(self, score: List[int]) -> List[str]:
        # 미리 빈 해열에 score 개수만큼 0 을 채워 넣은 상태로 시작
        # max 힙 사용
        # 딕셔너리 사용 (점수:등수(인덱스))
        # max 힙에서 하나씩 거내고 딕셔너리의 인덱스를 가져옴
        # 미리 만든 배열의 인덱스를 딕셔너리의 데이터를 이용해 지정 후 메달 및 순서를 지정
        
        count_of_score = len(score)
        result = ["0" for i in range(count_of_score)]
        heap = []

        for i in range(count_of_score):
            heapq.heappush(heap,(-score[i],i))
        
        # 3회 동안 반복해 매달을 지정
        # 매달 부여후 다른 반복문을 이용해 순차적으로 순서를 부여
        medals = ["Gold Medal","Silver Medal","Bronze Medal"]
        for i in range(1,count_of_score+1):
            node = heapq.heappop(heap)
            if i < 4 :
                result[node[1]] = medals[i-1]
            else:
                result[node[1]] = str(i)

        return result