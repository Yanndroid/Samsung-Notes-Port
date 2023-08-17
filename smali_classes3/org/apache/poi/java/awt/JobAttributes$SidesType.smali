.class public final Lorg/apache/poi/java/awt/JobAttributes$SidesType;
.super Lorg/apache/poi/java/awt/AttributeValue;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lorg/apache/poi/java/awt/JobAttributes;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "SidesType"
.end annotation


# static fields
.field private static final I_ONE_SIDED:I = 0x0

.field private static final I_TWO_SIDED_LONG_EDGE:I = 0x1

.field private static final I_TWO_SIDED_SHORT_EDGE:I = 0x2

.field private static final NAMES:[Ljava/lang/String;

.field public static final ONE_SIDED:Lorg/apache/poi/java/awt/JobAttributes$SidesType;

.field public static final TWO_SIDED_LONG_EDGE:Lorg/apache/poi/java/awt/JobAttributes$SidesType;

.field public static final TWO_SIDED_SHORT_EDGE:Lorg/apache/poi/java/awt/JobAttributes$SidesType;


# direct methods
.method public static constructor <clinit>()V
    .locals 3

    const-string v0, "one-sided"

    const-string/jumbo v1, "two-sided-long-edge"

    const-string/jumbo v2, "two-sided-short-edge"

    filled-new-array {v0, v1, v2}, [Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lorg/apache/poi/java/awt/JobAttributes$SidesType;->NAMES:[Ljava/lang/String;

    new-instance v0, Lorg/apache/poi/java/awt/JobAttributes$SidesType;

    const/4 v1, 0x0

    invoke-direct {v0, v1}, Lorg/apache/poi/java/awt/JobAttributes$SidesType;-><init>(I)V

    sput-object v0, Lorg/apache/poi/java/awt/JobAttributes$SidesType;->ONE_SIDED:Lorg/apache/poi/java/awt/JobAttributes$SidesType;

    new-instance v0, Lorg/apache/poi/java/awt/JobAttributes$SidesType;

    const/4 v1, 0x1

    invoke-direct {v0, v1}, Lorg/apache/poi/java/awt/JobAttributes$SidesType;-><init>(I)V

    sput-object v0, Lorg/apache/poi/java/awt/JobAttributes$SidesType;->TWO_SIDED_LONG_EDGE:Lorg/apache/poi/java/awt/JobAttributes$SidesType;

    new-instance v0, Lorg/apache/poi/java/awt/JobAttributes$SidesType;

    const/4 v1, 0x2

    invoke-direct {v0, v1}, Lorg/apache/poi/java/awt/JobAttributes$SidesType;-><init>(I)V

    sput-object v0, Lorg/apache/poi/java/awt/JobAttributes$SidesType;->TWO_SIDED_SHORT_EDGE:Lorg/apache/poi/java/awt/JobAttributes$SidesType;

    return-void
.end method

.method private constructor <init>(I)V
    .locals 1

    sget-object v0, Lorg/apache/poi/java/awt/JobAttributes$SidesType;->NAMES:[Ljava/lang/String;

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
