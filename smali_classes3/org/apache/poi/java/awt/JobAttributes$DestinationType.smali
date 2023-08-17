.class public final Lorg/apache/poi/java/awt/JobAttributes$DestinationType;
.super Lorg/apache/poi/java/awt/AttributeValue;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lorg/apache/poi/java/awt/JobAttributes;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "DestinationType"
.end annotation


# static fields
.field public static final FILE:Lorg/apache/poi/java/awt/JobAttributes$DestinationType;

.field private static final I_FILE:I = 0x0

.field private static final I_PRINTER:I = 0x1

.field private static final NAMES:[Ljava/lang/String;

.field public static final PRINTER:Lorg/apache/poi/java/awt/JobAttributes$DestinationType;


# direct methods
.method public static constructor <clinit>()V
    .locals 2

    const-string v0, "file"

    const-string v1, "printer"

    filled-new-array {v0, v1}, [Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lorg/apache/poi/java/awt/JobAttributes$DestinationType;->NAMES:[Ljava/lang/String;

    new-instance v0, Lorg/apache/poi/java/awt/JobAttributes$DestinationType;

    const/4 v1, 0x0

    invoke-direct {v0, v1}, Lorg/apache/poi/java/awt/JobAttributes$DestinationType;-><init>(I)V

    sput-object v0, Lorg/apache/poi/java/awt/JobAttributes$DestinationType;->FILE:Lorg/apache/poi/java/awt/JobAttributes$DestinationType;

    new-instance v0, Lorg/apache/poi/java/awt/JobAttributes$DestinationType;

    const/4 v1, 0x1

    invoke-direct {v0, v1}, Lorg/apache/poi/java/awt/JobAttributes$DestinationType;-><init>(I)V

    sput-object v0, Lorg/apache/poi/java/awt/JobAttributes$DestinationType;->PRINTER:Lorg/apache/poi/java/awt/JobAttributes$DestinationType;

    return-void
.end method

.method private constructor <init>(I)V
    .locals 1

    sget-object v0, Lorg/apache/poi/java/awt/JobAttributes$DestinationType;->NAMES:[Ljava/lang/String;

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
