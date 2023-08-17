.class public final Lorg/apache/poi/java/awt/JobAttributes$DefaultSelectionType;
.super Lorg/apache/poi/java/awt/AttributeValue;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lorg/apache/poi/java/awt/JobAttributes;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "DefaultSelectionType"
.end annotation


# static fields
.field public static final ALL:Lorg/apache/poi/java/awt/JobAttributes$DefaultSelectionType;

.field private static final I_ALL:I = 0x0

.field private static final I_RANGE:I = 0x1

.field private static final I_SELECTION:I = 0x2

.field private static final NAMES:[Ljava/lang/String;

.field public static final RANGE:Lorg/apache/poi/java/awt/JobAttributes$DefaultSelectionType;

.field public static final SELECTION:Lorg/apache/poi/java/awt/JobAttributes$DefaultSelectionType;


# direct methods
.method public static constructor <clinit>()V
    .locals 3

    const-string v0, "all"

    const-string v1, "range"

    const-string v2, "selection"

    filled-new-array {v0, v1, v2}, [Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lorg/apache/poi/java/awt/JobAttributes$DefaultSelectionType;->NAMES:[Ljava/lang/String;

    new-instance v0, Lorg/apache/poi/java/awt/JobAttributes$DefaultSelectionType;

    const/4 v1, 0x0

    invoke-direct {v0, v1}, Lorg/apache/poi/java/awt/JobAttributes$DefaultSelectionType;-><init>(I)V

    sput-object v0, Lorg/apache/poi/java/awt/JobAttributes$DefaultSelectionType;->ALL:Lorg/apache/poi/java/awt/JobAttributes$DefaultSelectionType;

    new-instance v0, Lorg/apache/poi/java/awt/JobAttributes$DefaultSelectionType;

    const/4 v1, 0x1

    invoke-direct {v0, v1}, Lorg/apache/poi/java/awt/JobAttributes$DefaultSelectionType;-><init>(I)V

    sput-object v0, Lorg/apache/poi/java/awt/JobAttributes$DefaultSelectionType;->RANGE:Lorg/apache/poi/java/awt/JobAttributes$DefaultSelectionType;

    new-instance v0, Lorg/apache/poi/java/awt/JobAttributes$DefaultSelectionType;

    const/4 v1, 0x2

    invoke-direct {v0, v1}, Lorg/apache/poi/java/awt/JobAttributes$DefaultSelectionType;-><init>(I)V

    sput-object v0, Lorg/apache/poi/java/awt/JobAttributes$DefaultSelectionType;->SELECTION:Lorg/apache/poi/java/awt/JobAttributes$DefaultSelectionType;

    return-void
.end method

.method private constructor <init>(I)V
    .locals 1

    sget-object v0, Lorg/apache/poi/java/awt/JobAttributes$DefaultSelectionType;->NAMES:[Ljava/lang/String;

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
