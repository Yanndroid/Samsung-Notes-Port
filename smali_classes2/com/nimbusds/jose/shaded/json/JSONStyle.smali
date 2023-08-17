.class public Lcom/nimbusds/jose/shaded/json/JSONStyle;
.super Ljava/lang/Object;
.source "SourceFile"


# static fields
.field public static final FLAG_AGRESSIVE:I = 0x8

.field public static final FLAG_IGNORE_NULL:I = 0x10

.field public static final FLAG_PROTECT_4WEB:I = 0x2

.field public static final FLAG_PROTECT_KEYS:I = 0x1

.field public static final FLAG_PROTECT_VALUES:I = 0x4

.field public static final LT_COMPRESS:Lcom/nimbusds/jose/shaded/json/JSONStyle;

.field public static final MAX_COMPRESS:Lcom/nimbusds/jose/shaded/json/JSONStyle;

.field public static final NO_COMPRESS:Lcom/nimbusds/jose/shaded/json/JSONStyle;


# instance fields
.field private _ignore_null:Z

.field private _protect4Web:Z

.field private _protectKeys:Z

.field private _protectValues:Z

.field private esc:Lcom/nimbusds/jose/shaded/json/JStylerObj$StringProtector;

.field private mpKey:Lcom/nimbusds/jose/shaded/json/JStylerObj$MustProtect;

.field private mpValue:Lcom/nimbusds/jose/shaded/json/JStylerObj$MustProtect;


# direct methods
.method public static constructor <clinit>()V
    .locals 2

    new-instance v0, Lcom/nimbusds/jose/shaded/json/JSONStyle;

    invoke-direct {v0}, Lcom/nimbusds/jose/shaded/json/JSONStyle;-><init>()V

    sput-object v0, Lcom/nimbusds/jose/shaded/json/JSONStyle;->NO_COMPRESS:Lcom/nimbusds/jose/shaded/json/JSONStyle;

    new-instance v0, Lcom/nimbusds/jose/shaded/json/JSONStyle;

    const/4 v1, -0x1

    invoke-direct {v0, v1}, Lcom/nimbusds/jose/shaded/json/JSONStyle;-><init>(I)V

    sput-object v0, Lcom/nimbusds/jose/shaded/json/JSONStyle;->MAX_COMPRESS:Lcom/nimbusds/jose/shaded/json/JSONStyle;

    new-instance v0, Lcom/nimbusds/jose/shaded/json/JSONStyle;

    const/4 v1, 0x2

    invoke-direct {v0, v1}, Lcom/nimbusds/jose/shaded/json/JSONStyle;-><init>(I)V

    sput-object v0, Lcom/nimbusds/jose/shaded/json/JSONStyle;->LT_COMPRESS:Lcom/nimbusds/jose/shaded/json/JSONStyle;

    return-void
.end method

.method public constructor <init>()V
    .locals 1

    const/4 v0, 0x0

    invoke-direct {p0, v0}, Lcom/nimbusds/jose/shaded/json/JSONStyle;-><init>(I)V

    return-void
.end method

.method public constructor <init>(I)V
    .locals 6

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    and-int/lit8 v0, p1, 0x1

    const/4 v1, 0x0

    const/4 v2, 0x1

    if-nez v0, :cond_0

    move v0, v2

    goto :goto_0

    :cond_0
    move v0, v1

    :goto_0
    iput-boolean v0, p0, Lcom/nimbusds/jose/shaded/json/JSONStyle;->_protectKeys:Z

    and-int/lit8 v3, p1, 0x4

    if-nez v3, :cond_1

    move v3, v2

    goto :goto_1

    :cond_1
    move v3, v1

    :goto_1
    iput-boolean v3, p0, Lcom/nimbusds/jose/shaded/json/JSONStyle;->_protectValues:Z

    and-int/lit8 v4, p1, 0x2

    if-nez v4, :cond_2

    move v4, v2

    goto :goto_2

    :cond_2
    move v4, v1

    :goto_2
    iput-boolean v4, p0, Lcom/nimbusds/jose/shaded/json/JSONStyle;->_protect4Web:Z

    and-int/lit8 v5, p1, 0x10

    if-lez v5, :cond_3

    move v1, v2

    :cond_3
    iput-boolean v1, p0, Lcom/nimbusds/jose/shaded/json/JSONStyle;->_ignore_null:Z

    and-int/lit8 p1, p1, 0x8

    if-lez p1, :cond_4

    sget-object p1, Lcom/nimbusds/jose/shaded/json/JStylerObj;->MP_AGGRESIVE:Lcom/nimbusds/jose/shaded/json/JStylerObj$MPAgressive;

    goto :goto_3

    :cond_4
    sget-object p1, Lcom/nimbusds/jose/shaded/json/JStylerObj;->MP_SIMPLE:Lcom/nimbusds/jose/shaded/json/JStylerObj$MPSimple;

    :goto_3
    if-eqz v3, :cond_5

    sget-object v1, Lcom/nimbusds/jose/shaded/json/JStylerObj;->MP_TRUE:Lcom/nimbusds/jose/shaded/json/JStylerObj$MPTrue;

    iput-object v1, p0, Lcom/nimbusds/jose/shaded/json/JSONStyle;->mpValue:Lcom/nimbusds/jose/shaded/json/JStylerObj$MustProtect;

    goto :goto_4

    :cond_5
    iput-object p1, p0, Lcom/nimbusds/jose/shaded/json/JSONStyle;->mpValue:Lcom/nimbusds/jose/shaded/json/JStylerObj$MustProtect;

    :goto_4
    if-eqz v0, :cond_6

    sget-object p1, Lcom/nimbusds/jose/shaded/json/JStylerObj;->MP_TRUE:Lcom/nimbusds/jose/shaded/json/JStylerObj$MPTrue;

    :cond_6
    iput-object p1, p0, Lcom/nimbusds/jose/shaded/json/JSONStyle;->mpKey:Lcom/nimbusds/jose/shaded/json/JStylerObj$MustProtect;

    if-eqz v4, :cond_7

    sget-object p1, Lcom/nimbusds/jose/shaded/json/JStylerObj;->ESCAPE4Web:Lcom/nimbusds/jose/shaded/json/JStylerObj$Escape4Web;

    goto :goto_5

    :cond_7
    sget-object p1, Lcom/nimbusds/jose/shaded/json/JStylerObj;->ESCAPE_LT:Lcom/nimbusds/jose/shaded/json/JStylerObj$EscapeLT;

    :goto_5
    iput-object p1, p0, Lcom/nimbusds/jose/shaded/json/JSONStyle;->esc:Lcom/nimbusds/jose/shaded/json/JStylerObj$StringProtector;

    return-void
.end method


# virtual methods
.method public arrayNextElm(Ljava/lang/Appendable;)V
    .locals 1

    const/16 v0, 0x2c

    invoke-interface {p1, v0}, Ljava/lang/Appendable;->append(C)Ljava/lang/Appendable;

    return-void
.end method

.method public arrayObjectEnd(Ljava/lang/Appendable;)V
    .locals 0

    return-void
.end method

.method public arrayStart(Ljava/lang/Appendable;)V
    .locals 1

    const/16 v0, 0x5b

    invoke-interface {p1, v0}, Ljava/lang/Appendable;->append(C)Ljava/lang/Appendable;

    return-void
.end method

.method public arrayStop(Ljava/lang/Appendable;)V
    .locals 1

    const/16 v0, 0x5d

    invoke-interface {p1, v0}, Ljava/lang/Appendable;->append(C)Ljava/lang/Appendable;

    return-void
.end method

.method public arrayfirstObject(Ljava/lang/Appendable;)V
    .locals 0

    return-void
.end method

.method public escape(Ljava/lang/String;Ljava/lang/Appendable;)V
    .locals 1

    iget-object v0, p0, Lcom/nimbusds/jose/shaded/json/JSONStyle;->esc:Lcom/nimbusds/jose/shaded/json/JStylerObj$StringProtector;

    invoke-interface {v0, p1, p2}, Lcom/nimbusds/jose/shaded/json/JStylerObj$StringProtector;->escape(Ljava/lang/String;Ljava/lang/Appendable;)V

    return-void
.end method

.method public ignoreNull()Z
    .locals 1

    iget-boolean v0, p0, Lcom/nimbusds/jose/shaded/json/JSONStyle;->_ignore_null:Z

    return v0
.end method

.method public indent()Z
    .locals 1

    const/4 v0, 0x0

    return v0
.end method

.method public mustProtectKey(Ljava/lang/String;)Z
    .locals 1

    iget-object v0, p0, Lcom/nimbusds/jose/shaded/json/JSONStyle;->mpKey:Lcom/nimbusds/jose/shaded/json/JStylerObj$MustProtect;

    invoke-interface {v0, p1}, Lcom/nimbusds/jose/shaded/json/JStylerObj$MustProtect;->mustBeProtect(Ljava/lang/String;)Z

    move-result p1

    return p1
.end method

.method public mustProtectValue(Ljava/lang/String;)Z
    .locals 1

    iget-object v0, p0, Lcom/nimbusds/jose/shaded/json/JSONStyle;->mpValue:Lcom/nimbusds/jose/shaded/json/JStylerObj$MustProtect;

    invoke-interface {v0, p1}, Lcom/nimbusds/jose/shaded/json/JStylerObj$MustProtect;->mustBeProtect(Ljava/lang/String;)Z

    move-result p1

    return p1
.end method

.method public objectElmStop(Ljava/lang/Appendable;)V
    .locals 0

    return-void
.end method

.method public objectEndOfKey(Ljava/lang/Appendable;)V
    .locals 1

    const/16 v0, 0x3a

    invoke-interface {p1, v0}, Ljava/lang/Appendable;->append(C)Ljava/lang/Appendable;

    return-void
.end method

.method public objectFirstStart(Ljava/lang/Appendable;)V
    .locals 0

    return-void
.end method

.method public objectNext(Ljava/lang/Appendable;)V
    .locals 1

    const/16 v0, 0x2c

    invoke-interface {p1, v0}, Ljava/lang/Appendable;->append(C)Ljava/lang/Appendable;

    return-void
.end method

.method public objectStart(Ljava/lang/Appendable;)V
    .locals 1

    const/16 v0, 0x7b

    invoke-interface {p1, v0}, Ljava/lang/Appendable;->append(C)Ljava/lang/Appendable;

    return-void
.end method

.method public objectStop(Ljava/lang/Appendable;)V
    .locals 1

    const/16 v0, 0x7d

    invoke-interface {p1, v0}, Ljava/lang/Appendable;->append(C)Ljava/lang/Appendable;

    return-void
.end method

.method public protect4Web()Z
    .locals 1

    iget-boolean v0, p0, Lcom/nimbusds/jose/shaded/json/JSONStyle;->_protect4Web:Z

    return v0
.end method

.method public protectKeys()Z
    .locals 1

    iget-boolean v0, p0, Lcom/nimbusds/jose/shaded/json/JSONStyle;->_protectKeys:Z

    return v0
.end method

.method public protectValues()Z
    .locals 1

    iget-boolean v0, p0, Lcom/nimbusds/jose/shaded/json/JSONStyle;->_protectValues:Z

    return v0
.end method

.method public writeString(Ljava/lang/Appendable;Ljava/lang/String;)V
    .locals 1

    invoke-virtual {p0, p2}, Lcom/nimbusds/jose/shaded/json/JSONStyle;->mustProtectValue(Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_0

    invoke-interface {p1, p2}, Ljava/lang/Appendable;->append(Ljava/lang/CharSequence;)Ljava/lang/Appendable;

    goto :goto_0

    :cond_0
    const/16 v0, 0x22

    invoke-interface {p1, v0}, Ljava/lang/Appendable;->append(C)Ljava/lang/Appendable;

    invoke-static {p2, p1, p0}, Lcom/nimbusds/jose/shaded/json/JSONValue;->escape(Ljava/lang/String;Ljava/lang/Appendable;Lcom/nimbusds/jose/shaded/json/JSONStyle;)V

    invoke-interface {p1, v0}, Ljava/lang/Appendable;->append(C)Ljava/lang/Appendable;

    :goto_0
    return-void
.end method
