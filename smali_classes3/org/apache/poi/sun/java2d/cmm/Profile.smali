.class public Lorg/apache/poi/sun/java2d/cmm/Profile;
.super Ljava/lang/Object;
.source "SourceFile"


# instance fields
.field private final nativePtr:J


# direct methods
.method public constructor <init>(J)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-wide p1, p0, Lorg/apache/poi/sun/java2d/cmm/Profile;->nativePtr:J

    return-void
.end method


# virtual methods
.method public final getNativePtr()J
    .locals 4

    iget-wide v0, p0, Lorg/apache/poi/sun/java2d/cmm/Profile;->nativePtr:J

    const-wide/16 v2, 0x0

    cmp-long v2, v0, v2

    if-eqz v2, :cond_0

    return-wide v0

    :cond_0
    new-instance v0, Lorg/apache/poi/java/awt/color/CMMException;

    const-string v1, "Invalid profile: ptr is null"

    invoke-direct {v0, v1}, Lorg/apache/poi/java/awt/color/CMMException;-><init>(Ljava/lang/String;)V

    throw v0
.end method
