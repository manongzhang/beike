<!DOCTYPE html>
<html lang="en">
<head>
	<meta charset="UTF-8">
	<title>Document</title>
</head>
<body>
	<div align="center">
		<table border="1">
			<tr>
				<th>ID</th><th>name</th><th>sex</th><th>tel</th><th>email</th>
			</tr>
			<?php foreach ($data as $key=>$val) { ?>
				<tr>
					<td><?= $val['id']; ?></td>
					<td><?= $val['name']; ?></td>
					<td><?= $val['sex']; ?></td>
					<td><?= $val['tel']; ?></td>
					<td><?= $val['email']; ?></td>
				</tr>
			<?php } ?>
		</table>
	</div>
</body>
</html>