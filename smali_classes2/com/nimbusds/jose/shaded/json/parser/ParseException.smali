.class public Lcom/nimbusds/jose/shaded/json/parser/ParseException;
.super Ljava/lang/Exception;
.source "SourceFile"


# static fields
.field public static final ERROR_UNEXPECTED_CHAR:I = 0x0

.field public static final ERROR_UNEXPECTED_DUPLICATE_KEY:I = 0x5

.field public static final ERROR_UNEXPECTED_EOF:I = 0x3

.field public static final ERROR_UNEXPECTED_EXCEPTION:I = 0x2

.field public static final ERROR_UNEXPECTED_LEADING_0:I = 0x6

.field public static final ERROR_UNEXPECTED_TOKEN:I = 0x1

.field public static final ERROR_UNEXPECTED_UNICODE:I = 0x4

.field private static final serialVersionUID:J = 0x7b38a172849bfcd1L


# instance fields
.field private errorType:I

.field private position:I

.field private unexpectedObject:Ljava/lang/Object;


# direct methods
.method public constructor <init>(IILjava/lang/Object;)V
    .locals 1

    invoke-static {p1, p2, p3}, Lcom/nimbusds/jose/shaded/json/parser/ParseException;->toMessage(IILjava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    invoke-direct {p0, v0}, Ljava/lang/Exception;-><init>(Ljava/lang/String;)V

    iput p1, p0, Lcom/nimbusds/jose/shaded/json/parser/ParseException;->position:I

    iput p2, p0, Lcom/nimbusds/jose/shaded/json/parser/ParseException;->errorType:I

    iput-object p3, p0, Lcom/nimbusds/jose/shaded/json/parser/ParseException;->unexpectedObject:Ljava/lang/Object;

    return-void
.end method

.method public constructor <init>(ILjava/lang/Throwable;)V
    .locals 2

    const/4 v0, 0x2

    invoke-static {p1, v0, p2}, Lcom/nimbusds/jose/shaded/json/parser/ParseException;->toMessage(IILjava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    invoke-direct {p0, v1, p2}, Ljava/lang/Exception;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    iput p1, p0, Lcom/nimbusds/jose/shaded/json/parser/ParseException;->position:I

    iput v0, p0, Lcom/nimbusds/jose/shaded/json/parser/ParseException;->errorType:I

    iput-object p2, p0, Lcom/nimbusds/jose/shaded/json/parser/ParseException;->unexpectedObject:Ljava/lang/Object;

    return-void
.end method

.method private static toMessage(IILjava/lang/Object;)Ljava/lang/String;
    .locals 4

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "."

    if-nez p1, :cond_0

    const-string p1, "Unexpected character ("

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string p1, ") at position "

    :goto_0
    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    :goto_1
    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    goto :goto_3

    :cond_0
    const/4 v2, 0x1

    const-string v3, " at position "

    if-ne p1, v2, :cond_1

    const-string p1, "Unexpected token "

    :goto_2
    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    goto :goto_1

    :cond_1
    const/4 v2, 0x2

    if-ne p1, v2, :cond_2

    const-string p1, "Unexpected exception "

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string p1, " occur at position "

    goto :goto_0

    :cond_2
    const/4 v2, 0x3

    if-ne p1, v2, :cond_3

    const-string p1, "Unexpected End Of File position "

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string p0, ": "

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    goto :goto_3

    :cond_3
    const/4 v2, 0x4

    if-ne p1, v2, :cond_4

    const-string p1, "Unexpected unicode escape sequence "

    goto :goto_2

    :cond_4
    const/4 v2, 0x5

    if-ne p1, v2, :cond_5

    const-string p1, "Unexpected duplicate key:"

    goto :goto_2

    :cond_5
    const/4 v2, 0x6

    if-ne p1, v2, :cond_6

    const-string p1, "Unexpected leading 0 in digit for token:"

    goto :goto_2

    :cond_6
    const-string p1, "Unkown error at position "

    goto :goto_0

    :goto_3
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method


# virtual methods
.method public getErrorType()I
    .locals 1

    iget v0, p0, Lcom/nimbusds/jose/shaded/json/parser/ParseException;->errorType:I

    return v0
.end method

.method public getPosition()I
    .locals 1

    iget v0, p0, Lcom/nimbusds/jose/shaded/json/parser/ParseException;->position:I

    return v0
.end method

.method public getUnexpectedObject()Ljava/lang/Object;
    .locals 1

    iget-object v0, p0, Lcom/nimbusds/jose/shaded/json/parser/ParseException;->unexpectedObject:Ljava/lang/Object;

    return-object v0
.end method
