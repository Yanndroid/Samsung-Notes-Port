.class public final Lorg/apache/poi/java/awt/BufferCapabilities$FlipContents;
.super Lorg/apache/poi/java/awt/AttributeValue;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lorg/apache/poi/java/awt/BufferCapabilities;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "FlipContents"
.end annotation


# static fields
.field public static final BACKGROUND:Lorg/apache/poi/java/awt/BufferCapabilities$FlipContents;

.field public static final COPIED:Lorg/apache/poi/java/awt/BufferCapabilities$FlipContents;

.field private static I_BACKGROUND:I = 0x1

.field private static I_COPIED:I = 0x3

.field private static I_PRIOR:I = 0x2

.field private static I_UNDEFINED:I

.field private static final NAMES:[Ljava/lang/String;

.field public static final PRIOR:Lorg/apache/poi/java/awt/BufferCapabilities$FlipContents;

.field public static final UNDEFINED:Lorg/apache/poi/java/awt/BufferCapabilities$FlipContents;


# direct methods
.method public static constructor <clinit>()V
    .locals 4

    const-string/jumbo v0, "undefined"

    const-string v1, "background"

    const-string v2, "prior"

    const-string v3, "copied"

    filled-new-array {v0, v1, v2, v3}, [Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lorg/apache/poi/java/awt/BufferCapabilities$FlipContents;->NAMES:[Ljava/lang/String;

    new-instance v0, Lorg/apache/poi/java/awt/BufferCapabilities$FlipContents;

    const/4 v1, 0x0

    invoke-direct {v0, v1}, Lorg/apache/poi/java/awt/BufferCapabilities$FlipContents;-><init>(I)V

    sput-object v0, Lorg/apache/poi/java/awt/BufferCapabilities$FlipContents;->UNDEFINED:Lorg/apache/poi/java/awt/BufferCapabilities$FlipContents;

    new-instance v0, Lorg/apache/poi/java/awt/BufferCapabilities$FlipContents;

    sget v1, Lorg/apache/poi/java/awt/BufferCapabilities$FlipContents;->I_BACKGROUND:I

    invoke-direct {v0, v1}, Lorg/apache/poi/java/awt/BufferCapabilities$FlipContents;-><init>(I)V

    sput-object v0, Lorg/apache/poi/java/awt/BufferCapabilities$FlipContents;->BACKGROUND:Lorg/apache/poi/java/awt/BufferCapabilities$FlipContents;

    new-instance v0, Lorg/apache/poi/java/awt/BufferCapabilities$FlipContents;

    sget v1, Lorg/apache/poi/java/awt/BufferCapabilities$FlipContents;->I_PRIOR:I

    invoke-direct {v0, v1}, Lorg/apache/poi/java/awt/BufferCapabilities$FlipContents;-><init>(I)V

    sput-object v0, Lorg/apache/poi/java/awt/BufferCapabilities$FlipContents;->PRIOR:Lorg/apache/poi/java/awt/BufferCapabilities$FlipContents;

    new-instance v0, Lorg/apache/poi/java/awt/BufferCapabilities$FlipContents;

    sget v1, Lorg/apache/poi/java/awt/BufferCapabilities$FlipContents;->I_COPIED:I

    invoke-direct {v0, v1}, Lorg/apache/poi/java/awt/BufferCapabilities$FlipContents;-><init>(I)V

    sput-object v0, Lorg/apache/poi/java/awt/BufferCapabilities$FlipContents;->COPIED:Lorg/apache/poi/java/awt/BufferCapabilities$FlipContents;

    return-void
.end method

.method private constructor <init>(I)V
    .locals 1

    sget-object v0, Lorg/apache/poi/java/awt/BufferCapabilities$FlipContents;->NAMES:[Ljava/lang/String;

    invoke-direct {p0, p1, v0}, Lorg/apache/poi/java/awt/AttributeValue;-><init>(I[Ljava/lang/String;)V

    return-void
.end method


# virtual methods
.method public bridge synthetic hashCode()I
    .locals 1

    invoke-super {p0}, Lorg/apache/poi/java/awt/AttributeValue;->hashCode()I

    move-result v0

    return v0
.end method

.method public bridge synthetic toString()Ljava/lang/String;
    .locals 1

    invoke-super {p0}, Lorg/apache/poi/java/awt/AttributeValue;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
