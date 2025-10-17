use ai_joppass;

-- 회원 + 이력서 JOIN
SELECT u.user_name, r.title, r.content
FROM user u
JOIN resume r ON u.user_id = r.user_id;

-- 면접 + 질문 + 답변 조회
SELECT u.user_name, q.question_content, a.answer_content
FROM user u
JOIN interview i ON u.user_id = i.user_id
JOIN question q ON i.interview_id = q.interview_id
JOIN answer a ON q.question_id = a.question_id;

-- 답변 + 분석 결과 조회
SELECT u.user_name, q.question_content, a.answer_content, an.description
FROM user u
JOIN interview i ON u.user_id = i.user_id
JOIN question q ON i.interview_id = q.interview_id
JOIN answer a ON q.question_id = a.question_id
JOIN analysis an ON a.answer_id = an.answer_id;
