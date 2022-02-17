CREATE FUNCTION fnCalculateMoneyRange
(
	@X1 money,
	@Y1 money,
	@X2 money,
	@Y2 money
)
RETURNS money
AS
BEGIN
    DECLARE @XR money
	DECLARE @YR money
	DECLARE @Result money

	SELECT @XR = @X1 - @X2
	SELECT @YR = @Y1 - @Y2
	SELECT @Result = SQRT(@XR*@XR + @YR*@YR)

	RETURN @Result

END
GO