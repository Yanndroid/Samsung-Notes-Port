.class public Lorg/apache/poi/java/awt/color/ICC_ProfileGray;
.super Lorg/apache/poi/java/awt/color/ICC_Profile;
.source "SourceFile"


# static fields
.field public static final serialVersionUID:J = -0xf9bd00e0d665d59L


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
.method public getGamma()F
    .locals 1

    const v0, 0x6b545243

    invoke-super {p0, v0}, Lorg/apache/poi/java/awt/color/ICC_Profile;->getGamma(I)F

    move-result v0

    return v0
.end method

.method public getMediaWhitePoint()[F
    .locals 1

    invoke-super {p0}, Lorg/apache/poi/java/awt/color/ICC_Profile;->getMediaWhitePoint()[F

    move-result-object v0

    return-object v0
.end method

.method public getTRC()[S
    .locals 1

    const v0, 0x6b545243

    invoke-super {p0, v0}, Lorg/apache/poi/java/awt/color/ICC_Profile;->getTRC(I)[S

    move-result-object v0

    return-object v0
.end method
