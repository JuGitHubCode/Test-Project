<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>board_input</title>
<!-- summernote -->
<link href="https://stackpath.bootstrapcdn.com/bootstrap/3.4.1/css/bootstrap.min.css" rel="stylesheet">
<script src="https://code.jquery.com/jquery-3.5.1.min.js"></script>
<script src="https://stackpath.bootstrapcdn.com/bootstrap/3.4.1/js/bootstrap.min.js"></script>

<link href="https://cdn.jsdelivr.net/npm/summernote@0.8.18/dist/summernote.min.css" rel="stylesheet">
<script src="https://cdn.jsdelivr.net/npm/summernote@0.8.18/dist/summernote.min.js"></script>

<link rel="stylesheet" href="./css/board.css">
<script src="./js/board.js"></script>
</head>
<body>

<div id="board">
	<h1>게시물</h1>
	<form name="frm_board" class="frm_board" id="frm_board" method="post">
		<label>작성일</label>
		<input type="date" name="nal">
		<br>
		
		<label>작성자</label>
		<input type="text" name="id" value="${mId }">
		<br>
		
		<label>제목</label>
		<input type="text" name="subject">
		<br>
		
		<textarea name="doc" id="summernote" ></textarea><!-- 향후 서머노트로 변경 -->
		<br>
		
		<label>첨부</label>
		<input type="file" name="attFile" multiple="multiple"><!-- 업로드 타입은 file, multiple 은 다중 선택을 위한 속성 -->
		<div class="attList"></div>
		
		<div class="btns">
			<button type="button" onclick="board.inputR(this.form)">작성</button>
			<button type="button" onclick="board.select(this.form)">취소</button>
		</div>
		<input type="text" name="findStr" value="${param.findStr }">
		<input type="text" name="nowPage" value="${param.nowPage }">
	</form>


</div>
	<script>
		board.init();
	</script>


</body>
</html>