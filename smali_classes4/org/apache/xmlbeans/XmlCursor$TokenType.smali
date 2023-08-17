.class public final Lorg/apache/xmlbeans/XmlCursor$TokenType;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lorg/apache/xmlbeans/XmlCursor;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "TokenType"
.end annotation


# static fields
.field public static final ATTR:Lorg/apache/xmlbeans/XmlCursor$TokenType;

.field public static final COMMENT:Lorg/apache/xmlbeans/XmlCursor$TokenType;

.field public static final END:Lorg/apache/xmlbeans/XmlCursor$TokenType;

.field public static final ENDDOC:Lorg/apache/xmlbeans/XmlCursor$TokenType;

.field public static final INT_ATTR:I = 0x6

.field public static final INT_COMMENT:I = 0x8

.field public static final INT_END:I = 0x4

.field public static final INT_ENDDOC:I = 0x2

.field public static final INT_NAMESPACE:I = 0x7

.field public static final INT_NONE:I = 0x0

.field public static final INT_PROCINST:I = 0x9

.field public static final INT_START:I = 0x3

.field public static final INT_STARTDOC:I = 0x1

.field public static final INT_TEXT:I = 0x5

.field public static final NAMESPACE:Lorg/apache/xmlbeans/XmlCursor$TokenType;

.field public static final NONE:Lorg/apache/xmlbeans/XmlCursor$TokenType;

.field public static final PROCINST:Lorg/apache/xmlbeans/XmlCursor$TokenType;

.field public static final START:Lorg/apache/xmlbeans/XmlCursor$TokenType;

.field public static final STARTDOC:Lorg/apache/xmlbeans/XmlCursor$TokenType;

.field public static final TEXT:Lorg/apache/xmlbeans/XmlCursor$TokenType;


# instance fields
.field private _name:Ljava/lang/String;

.field private _value:I


# direct methods
.method public static constructor <clinit>()V
    .locals 3

    new-instance v0, Lorg/apache/xmlbeans/XmlCursor$TokenType;

    const-string v1, "NONE"

    const/4 v2, 0x0

    invoke-direct {v0, v1, v2}, Lorg/apache/xmlbeans/XmlCursor$TokenType;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lorg/apache/xmlbeans/XmlCursor$TokenType;->NONE:Lorg/apache/xmlbeans/XmlCursor$TokenType;

    new-instance v0, Lorg/apache/xmlbeans/XmlCursor$TokenType;

    const-string v1, "STARTDOC"

    const/4 v2, 0x1

    invoke-direct {v0, v1, v2}, Lorg/apache/xmlbeans/XmlCursor$TokenType;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lorg/apache/xmlbeans/XmlCursor$TokenType;->STARTDOC:Lorg/apache/xmlbeans/XmlCursor$TokenType;

    new-instance v0, Lorg/apache/xmlbeans/XmlCursor$TokenType;

    const-string v1, "ENDDOC"

    const/4 v2, 0x2

    invoke-direct {v0, v1, v2}, Lorg/apache/xmlbeans/XmlCursor$TokenType;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lorg/apache/xmlbeans/XmlCursor$TokenType;->ENDDOC:Lorg/apache/xmlbeans/XmlCursor$TokenType;

    new-instance v0, Lorg/apache/xmlbeans/XmlCursor$TokenType;

    const-string v1, "START"

    const/4 v2, 0x3

    invoke-direct {v0, v1, v2}, Lorg/apache/xmlbeans/XmlCursor$TokenType;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lorg/apache/xmlbeans/XmlCursor$TokenType;->START:Lorg/apache/xmlbeans/XmlCursor$TokenType;

    new-instance v0, Lorg/apache/xmlbeans/XmlCursor$TokenType;

    const-string v1, "END"

    const/4 v2, 0x4

    invoke-direct {v0, v1, v2}, Lorg/apache/xmlbeans/XmlCursor$TokenType;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lorg/apache/xmlbeans/XmlCursor$TokenType;->END:Lorg/apache/xmlbeans/XmlCursor$TokenType;

    new-instance v0, Lorg/apache/xmlbeans/XmlCursor$TokenType;

    const-string v1, "TEXT"

    const/4 v2, 0x5

    invoke-direct {v0, v1, v2}, Lorg/apache/xmlbeans/XmlCursor$TokenType;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lorg/apache/xmlbeans/XmlCursor$TokenType;->TEXT:Lorg/apache/xmlbeans/XmlCursor$TokenType;

    new-instance v0, Lorg/apache/xmlbeans/XmlCursor$TokenType;

    const-string v1, "ATTR"

    const/4 v2, 0x6

    invoke-direct {v0, v1, v2}, Lorg/apache/xmlbeans/XmlCursor$TokenType;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lorg/apache/xmlbeans/XmlCursor$TokenType;->ATTR:Lorg/apache/xmlbeans/XmlCursor$TokenType;

    new-instance v0, Lorg/apache/xmlbeans/XmlCursor$TokenType;

    const-string v1, "NAMESPACE"

    const/4 v2, 0x7

    invoke-direct {v0, v1, v2}, Lorg/apache/xmlbeans/XmlCursor$TokenType;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lorg/apache/xmlbeans/XmlCursor$TokenType;->NAMESPACE:Lorg/apache/xmlbeans/XmlCursor$TokenType;

    new-instance v0, Lorg/apache/xmlbeans/XmlCursor$TokenType;

    const-string v1, "COMMENT"

    const/16 v2, 0x8

    invoke-direct {v0, v1, v2}, Lorg/apache/xmlbeans/XmlCursor$TokenType;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lorg/apache/xmlbeans/XmlCursor$TokenType;->COMMENT:Lorg/apache/xmlbeans/XmlCursor$TokenType;

    new-instance v0, Lorg/apache/xmlbeans/XmlCursor$TokenType;

    const-string v1, "PROCINST"

    const/16 v2, 0x9

    invoke-direct {v0, v1, v2}, Lorg/apache/xmlbeans/XmlCursor$TokenType;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lorg/apache/xmlbeans/XmlCursor$TokenType;->PROCINST:Lorg/apache/xmlbeans/XmlCursor$TokenType;

    return-void
.end method

.method private constructor <init>(Ljava/lang/String;I)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lorg/apache/xmlbeans/XmlCursor$TokenType;->_name:Ljava/lang/String;

    iput p2, p0, Lorg/apache/xmlbeans/XmlCursor$TokenType;->_value:I

    return-void
.end method


# virtual methods
.method public intValue()I
    .locals 1

    iget v0, p0, Lorg/apache/xmlbeans/XmlCursor$TokenType;->_value:I

    return v0
.end method

.method public isAnyAttr()Z
    .locals 1

    sget-object v0, Lorg/apache/xmlbeans/XmlCursor$TokenType;->NAMESPACE:Lorg/apache/xmlbeans/XmlCursor$TokenType;

    if-eq p0, v0, :cond_1

    sget-object v0, Lorg/apache/xmlbeans/XmlCursor$TokenType;->ATTR:Lorg/apache/xmlbeans/XmlCursor$TokenType;

    if-ne p0, v0, :cond_0

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    goto :goto_1

    :cond_1
    :goto_0
    const/4 v0, 0x1

    :goto_1
    return v0
.end method

.method public isAttr()Z
    .locals 1

    sget-object v0, Lorg/apache/xmlbeans/XmlCursor$TokenType;->ATTR:Lorg/apache/xmlbeans/XmlCursor$TokenType;

    if-ne p0, v0, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return v0
.end method

.method public isComment()Z
    .locals 1

    sget-object v0, Lorg/apache/xmlbeans/XmlCursor$TokenType;->COMMENT:Lorg/apache/xmlbeans/XmlCursor$TokenType;

    if-ne p0, v0, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return v0
.end method

.method public isContainer()Z
    .locals 1

    sget-object v0, Lorg/apache/xmlbeans/XmlCursor$TokenType;->STARTDOC:Lorg/apache/xmlbeans/XmlCursor$TokenType;

    if-eq p0, v0, :cond_1

    sget-object v0, Lorg/apache/xmlbeans/XmlCursor$TokenType;->START:Lorg/apache/xmlbeans/XmlCursor$TokenType;

    if-ne p0, v0, :cond_0

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    goto :goto_1

    :cond_1
    :goto_0
    const/4 v0, 0x1

    :goto_1
    return v0
.end method

.method public isEnd()Z
    .locals 1

    sget-object v0, Lorg/apache/xmlbeans/XmlCursor$TokenType;->END:Lorg/apache/xmlbeans/XmlCursor$TokenType;

    if-ne p0, v0, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return v0
.end method

.method public isEnddoc()Z
    .locals 1

    sget-object v0, Lorg/apache/xmlbeans/XmlCursor$TokenType;->ENDDOC:Lorg/apache/xmlbeans/XmlCursor$TokenType;

    if-ne p0, v0, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return v0
.end method

.method public isFinish()Z
    .locals 1

    sget-object v0, Lorg/apache/xmlbeans/XmlCursor$TokenType;->ENDDOC:Lorg/apache/xmlbeans/XmlCursor$TokenType;

    if-eq p0, v0, :cond_1

    sget-object v0, Lorg/apache/xmlbeans/XmlCursor$TokenType;->END:Lorg/apache/xmlbeans/XmlCursor$TokenType;

    if-ne p0, v0, :cond_0

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    goto :goto_1

    :cond_1
    :goto_0
    const/4 v0, 0x1

    :goto_1
    return v0
.end method

.method public isNamespace()Z
    .locals 1

    sget-object v0, Lorg/apache/xmlbeans/XmlCursor$TokenType;->NAMESPACE:Lorg/apache/xmlbeans/XmlCursor$TokenType;

    if-ne p0, v0, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return v0
.end method

.method public isNone()Z
    .locals 1

    sget-object v0, Lorg/apache/xmlbeans/XmlCursor$TokenType;->NONE:Lorg/apache/xmlbeans/XmlCursor$TokenType;

    if-ne p0, v0, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return v0
.end method

.method public isProcinst()Z
    .locals 1

    sget-object v0, Lorg/apache/xmlbeans/XmlCursor$TokenType;->PROCINST:Lorg/apache/xmlbeans/XmlCursor$TokenType;

    if-ne p0, v0, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return v0
.end method

.method public isStart()Z
    .locals 1

    sget-object v0, Lorg/apache/xmlbeans/XmlCursor$TokenType;->START:Lorg/apache/xmlbeans/XmlCursor$TokenType;

    if-ne p0, v0, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return v0
.end method

.method public isStartdoc()Z
    .locals 1

    sget-object v0, Lorg/apache/xmlbeans/XmlCursor$TokenType;->STARTDOC:Lorg/apache/xmlbeans/XmlCursor$TokenType;

    if-ne p0, v0, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return v0
.end method

.method public isText()Z
    .locals 1

    sget-object v0, Lorg/apache/xmlbeans/XmlCursor$TokenType;->TEXT:Lorg/apache/xmlbeans/XmlCursor$TokenType;

    if-ne p0, v0, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return v0
.end method

.method public toString()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lorg/apache/xmlbeans/XmlCursor$TokenType;->_name:Ljava/lang/String;

    return-object v0
.end method
