num1 = float(input("첫 번째 숫자를 입력하세요: "))
operator = input("사칙연산 중 하나를 입력하세요 (+, -, *, /): ")
num2 = float(input("두 번째 숫자를 입력하세요: "))

# 계산 수행
if operator == "+":
    result = num1 + num2
elif operator == "-":
    result = num1 - num2
elif operator == "*":
    result = num1 * num2
elif operator == "/":
    # 나누기 연산에서 0으로 나누는 경우를 처리합니다.
    if num2 != 0:
        result = num1 / num2
    else:
        result = "0으로 나눌 수 없습니다."
else:
    result = "올바른 연산자를 입력하세요."

# 결과 출력
print("결과:", result)
