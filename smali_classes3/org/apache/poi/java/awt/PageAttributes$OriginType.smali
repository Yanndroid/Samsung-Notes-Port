.class public final Lorg/apache/poi/java/awt/PageAttributes$OriginType;
.super Lorg/apache/poi/java/awt/AttributeValue;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lorg/apache/poi/java/awt/PageAttributes;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "OriginType"
.end annotation


# static fields
.field private static final I_PHYSICAL:I = 0x0

.field private static final I_PRINTABLE:I = 0x1

.field private static final NAMES:[Ljava/lang/String;

.field public static final PHYSICAL:Lorg/apache/poi/java/awt/PageAttributes$OriginType;

.field public static final PRINTABLE:Lorg/apache/poi/java/awt/PageAttributes$OriginType;


# direct methods
.method public static constructor <clinit>()V
    .locals 2

    const-string v0, "physical"

    const-string v1, "printable"

    filled-new-array {v0, v1}, [Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lorg/apache/poi/java/awt/PageAttributes$OriginType;->NAMES:[Ljava/lang/String;

    new-instance v0, Lorg/apache/poi/java/awt/PageAttributes$OriginType;

    const/4 v1, 0x0

    invoke-direct {v0, v1}, Lorg/apache/poi/java/awt/PageAttributes$OriginType;-><init>(I)V

    sput-object v0, Lorg/apache/poi/java/awt/PageAttributes$OriginType;->PHYSICAL:Lorg/apache/poi/java/awt/PageAttributes$OriginType;

    new-instance v0, Lorg/apache/poi/java/awt/PageAttributes$OriginType;

    const/4 v1, 0x1

    invoke-direct {v0, v1}, Lorg/apache/poi/java/awt/PageAttributes$OriginType;-><init>(I)V

    sput-object v0, Lorg/apache/poi/java/awt/PageAttributes$OriginType;->PRINTABLE:Lorg/apache/poi/java/awt/PageAttributes$OriginType;

    return-void
.end method

.method private constructor <init>(I)V
    .locals 1

    sget-object v0, Lorg/apache/poi/java/awt/PageAttributes$OriginType;->NAMES:[Ljava/lang/String;

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
