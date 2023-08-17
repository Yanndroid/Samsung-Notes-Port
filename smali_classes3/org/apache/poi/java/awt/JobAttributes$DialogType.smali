.class public final Lorg/apache/poi/java/awt/JobAttributes$DialogType;
.super Lorg/apache/poi/java/awt/AttributeValue;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lorg/apache/poi/java/awt/JobAttributes;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "DialogType"
.end annotation


# static fields
.field public static final COMMON:Lorg/apache/poi/java/awt/JobAttributes$DialogType;

.field private static final I_COMMON:I = 0x0

.field private static final I_NATIVE:I = 0x1

.field private static final I_NONE:I = 0x2

.field private static final NAMES:[Ljava/lang/String;

.field public static final NATIVE:Lorg/apache/poi/java/awt/JobAttributes$DialogType;

.field public static final NONE:Lorg/apache/poi/java/awt/JobAttributes$DialogType;


# direct methods
.method public static constructor <clinit>()V
    .locals 3

    const-string v0, "common"

    const-string v1, "native"

    const-string v2, "none"

    filled-new-array {v0, v1, v2}, [Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lorg/apache/poi/java/awt/JobAttributes$DialogType;->NAMES:[Ljava/lang/String;

    new-instance v0, Lorg/apache/poi/java/awt/JobAttributes$DialogType;

    const/4 v1, 0x0

    invoke-direct {v0, v1}, Lorg/apache/poi/java/awt/JobAttributes$DialogType;-><init>(I)V

    sput-object v0, Lorg/apache/poi/java/awt/JobAttributes$DialogType;->COMMON:Lorg/apache/poi/java/awt/JobAttributes$DialogType;

    new-instance v0, Lorg/apache/poi/java/awt/JobAttributes$DialogType;

    const/4 v1, 0x1

    invoke-direct {v0, v1}, Lorg/apache/poi/java/awt/JobAttributes$DialogType;-><init>(I)V

    sput-object v0, Lorg/apache/poi/java/awt/JobAttributes$DialogType;->NATIVE:Lorg/apache/poi/java/awt/JobAttributes$DialogType;

    new-instance v0, Lorg/apache/poi/java/awt/JobAttributes$DialogType;

    const/4 v1, 0x2

    invoke-direct {v0, v1}, Lorg/apache/poi/java/awt/JobAttributes$DialogType;-><init>(I)V

    sput-object v0, Lorg/apache/poi/java/awt/JobAttributes$DialogType;->NONE:Lorg/apache/poi/java/awt/JobAttributes$DialogType;

    return-void
.end method

.method private constructor <init>(I)V
    .locals 1

    sget-object v0, Lorg/apache/poi/java/awt/JobAttributes$DialogType;->NAMES:[Ljava/lang/String;

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
