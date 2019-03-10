CREATE PROCEDURE usp_GetArtists
(
@FiltroPorNombre NVARCHAR(120)
)
AS
BEGIN
	SELECT ArtistId,Name 
	FROM Artist WHERE 
	Name LIKE @FiltroPorNombre
END

GO

--execute usp_InsertArtist 'Nuevo artista'

CREATE PROCEDURE usp_InsertArtist(
@Nombre NVARCHAR(120)
)
AS
BEGIN
	INSERT INTO Artist(Name)
	VALUES(@Nombre)

	SELECT SCOPE_IDENTITY()

END


CREATE PROCEDURE usp_UpdateArtist(
@Nombre NVARCHAR(120),
@ID INT,
@RESULT BIT OUTPUT

)
AS
BEGIN
	UPDATE Artist SET Name=@Nombre
	WHERE ArtistId = @id

	SET @RESULT = 1

END

ALTER PROCEDURE usp_DeleteArtist(
@ID INT
)
AS
BEGIN
	DELETE FROM Artist
	WHERE ArtistId = @id

END

