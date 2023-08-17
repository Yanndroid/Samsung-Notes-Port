.class public Lorg/apache/poi/java/awt/color/ICC_ProfileRGB;
.super Lorg/apache/poi/java/awt/color/ICC_Profile;
.source "SourceFile"


# static fields
.field public static final BLUECOMPONENT:I = 0x2

.field public static final GREENCOMPONENT:I = 0x1

.field public static final REDCOMPONENT:I = 0x0

.field public static final serialVersionUID:J = 0x760811b99ac7a706L


# direct methods
.method public constructor <init>(J)V
    .locals 0

    invoke-direct {p0, p1, p2}, Lorg/apache/poi/java/awt/color/ICC_Profile;-><init>(J)V

    return-void
.end method

.method public constructor <init>(Lorg/apache/poi/sun/java2d/cmm/ProfileDeferralInfo;)V
    .locals 0

    invoke-direct {p0, p1}, Lorg/apache/poi/java/awt/color/ICC_Profile;-><init>(Lorg/apache/poi/sun/java2d/cmm/ProfileDeferralInfo;)V

    return-void
.end method


# virtual methods
.method public getGamma(I)F
    .locals 1

    if-eqz p1, :cond_2

    const/4 v0, 0x1

    if-eq p1, v0, :cond_1

    const/4 v0, 0x2

    if-ne p1, v0, :cond_0

    const p1, 0x62545243

    goto :goto_0

    :cond_0
    new-instance p1, Ljava/lang/IllegalArgumentException;

    const-string v0, "Must be Red, Green, or Blue"

    invoke-direct {p1, v0}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p1

    :cond_1
    const p1, 0x67545243

    goto :goto_0

    :cond_2
    const p1, 0x72545243

    :goto_0
    invoke-super {p0, p1}, Lorg/apache/poi/java/awt/color/ICC_Profile;->getGamma(I)F

    move-result p1

    return p1
.end method

.method public getMatrix()[[F
    .locals 7

    const/4 v0, 0x2

    new-array v1, v0, [I

    fill-array-data v1, :array_0

    const-class v2, F

    invoke-static {v2, v1}, Ljava/lang/reflect/Array;->newInstance(Ljava/lang/Class;[I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, [[F

    const v2, 0x7258595a

    invoke-virtual {p0, v2}, Lorg/apache/poi/java/awt/color/ICC_Profile;->getXYZTag(I)[F

    move-result-object v2

    const/4 v3, 0x0

    aget-object v4, v1, v3

    aget v5, v2, v3

    aput v5, v4, v3

    const/4 v4, 0x1

    aget-object v5, v1, v4

    aget v6, v2, v4

    aput v6, v5, v3

    aget-object v5, v1, v0

    aget v2, v2, v0

    aput v2, v5, v3

    const v2, 0x6758595a

    invoke-virtual {p0, v2}, Lorg/apache/poi/java/awt/color/ICC_Profile;->getXYZTag(I)[F

    move-result-object v2

    aget-object v5, v1, v3

    aget v6, v2, v3

    aput v6, v5, v4

    aget-object v5, v1, v4

    aget v6, v2, v4

    aput v6, v5, v4

    aget-object v5, v1, v0

    aget v2, v2, v0

    aput v2, v5, v4

    const v2, 0x6258595a

    invoke-virtual {p0, v2}, Lorg/apache/poi/java/awt/color/ICC_Profile;->getXYZTag(I)[F

    move-result-object v2

    aget-object v5, v1, v3

    aget v3, v2, v3

    aput v3, v5, v0

    aget-object v3, v1, v4

    aget v4, v2, v4

    aput v4, v3, v0

    aget-object v3, v1, v0

    aget v2, v2, v0

    aput v2, v3, v0

    return-object v1

    :array_0
    .array-data 4
        0x3
        0x3
    .end array-data
.end method

.method public getMediaWhitePoint()[F
    .locals 1

    invoke-super {p0}, Lorg/apache/poi/java/awt/color/ICC_Profile;->getMediaWhitePoint()[F

    move-result-object v0

    return-object v0
.end method

.method public getTRC(I)[S
    .locals 1

    if-eqz p1, :cond_2

    const/4 v0, 0x1

    if-eq p1, v0, :cond_1

    const/4 v0, 0x2

    if-ne p1, v0, :cond_0

    const p1, 0x62545243

    goto :goto_0

    :cond_0
    new-instance p1, Ljava/lang/IllegalArgumentException;

    const-string v0, "Must be Red, Green, or Blue"

    invoke-direct {p1, v0}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p1

    :cond_1
    const p1, 0x67545243

    goto :goto_0

    :cond_2
    const p1, 0x72545243

    :goto_0
    invoke-super {p0, p1}, Lorg/apache/poi/java/awt/color/ICC_Profile;->getTRC(I)[S

    move-result-object p1

    return-object p1
.end method
