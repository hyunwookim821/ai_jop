use ai_joppass;

-- 회원(user)
INSERT INTO user (user_id, user_name, password, email, profileimage, created_at)
VALUES
(1, '김현우', 'pass1234', 'hyunwoo@example.com', 'profile1.png', NOW()),
(2, '이영희', 'pass5678', 'younghee@example.com', 'profile2.png', NOW());

-- 이력서(resume)
INSERT INTO resume (resume_id, user_id, title, create_at, update_at, content, resume_file)
VALUES
(1, 1, '김현우 이력서', NOW(), NOW(), 'Spring Boot, MySQL 경험', 'resume1.pdf'),
(2, 2, '이형희 이력서', NOW(), NOW(), 'Python, Pandas, 머신러닝 경험', 'resume2.pdf');

-- 면접(interview)
INSERT INTO interview (interview_id, user_id, resume_id, start_time, end_time)
VALUES
(1, 1, 1, '2025-10-15 14:00:00', '2025-10-15 15:00:00'),
(2, 2, 2, '2025-10-16 10:00:00', '2025-10-16 11:00:00');

-- 질문(question)
INSERT INTO question (question_id, interview_id, resume_id, question_content, category)
VALUES
(1, 1, 1, '프로젝트 경험 중 가장 어려웠던 점은?', '경험'),
(2, 1, 1, '데이터베이스에서 인덱스(Index)의 역할은 무엇인가요?', '기술'),
(3, 2, 2, '머신러닝 모델 성능을 향상시킨 방법은?', '기술');

-- 답변(answer)
INSERT INTO answer (answer_id, question_id, interview_id, answer_content, audio_file, video_file)
VALUES
(1, 1, 1, '프로젝트 일정 관리가 가장 힘들었습니다.', 'ans1.mp3', 'ans1.mp4'),
(2, 2, 1, '인덱스는 검색 속도를 향상시키고 쿼리 성능을 최적화합니다.', 'ans2.mp3', 'ans2.mp4'),
(3, 3, 2, '특성 선택과 정규화를 적용해 모델 성능을 높였습니다.', 'ans3.mp3', 'ans3.mp4');

-- 분석(analysis)
INSERT INTO analysis (analysis_id, answer_id, description, data_file, created_at)
VALUES
(1, 1, '답변이 간결하나 구체적 사례 부족', 'analysis1.json', NOW()),
(2, 2, '인덱스 개념 이해도는 좋으나 실행 계획에 대한 추가 설명 필요', 'analysis2.json', NOW()),
(3, 3, '머신러닝 성능 개선 방법을 잘 설명함', 'analysis3.json', NOW());
