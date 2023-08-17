.class public Lorg/apache/poi/sun/java2d/cmm/ProfileDeferralInfo;
.super Ljava/io/InputStream;
.source "SourceFile"


# instance fields
.field public colorSpaceType:I

.field public filename:Ljava/lang/String;

.field public numComponents:I

.field public profileClass:I


# direct methods
.method public constructor <init>(Ljava/lang/String;III)V
    .locals 0

    invoke-direct {p0}, Ljava/io/InputStream;-><init>()V

    iput-object p1, p0, Lorg/apache/poi/sun/java2d/cmm/ProfileDeferralInfo;->filename:Ljava/lang/String;

    iput p2, p0, Lorg/apache/poi/sun/java2d/cmm/ProfileDeferralInfo;->colorSpaceType:I

    iput p3, p0, Lorg/apache/poi/sun/java2d/cmm/ProfileDeferralInfo;->numComponents:I

    iput p4, p0, Lorg/apache/poi/sun/java2d/cmm/ProfileDeferralInfo;->profileClass:I

    return-void
.end method


# virtual methods
.method public read()I
    .locals 1

    const/4 v0, 0x0

    return v0
.end method
