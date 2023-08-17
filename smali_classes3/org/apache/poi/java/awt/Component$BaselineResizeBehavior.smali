.class public final enum Lorg/apache/poi/java/awt/Component$BaselineResizeBehavior;
.super Ljava/lang/Enum;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lorg/apache/poi/java/awt/Component;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x4019
    name = "BaselineResizeBehavior"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum<",
        "Lorg/apache/poi/java/awt/Component$BaselineResizeBehavior;",
        ">;"
    }
.end annotation


# static fields
.field private static final synthetic $VALUES:[Lorg/apache/poi/java/awt/Component$BaselineResizeBehavior;

.field public static final enum CENTER_OFFSET:Lorg/apache/poi/java/awt/Component$BaselineResizeBehavior;

.field public static final enum CONSTANT_ASCENT:Lorg/apache/poi/java/awt/Component$BaselineResizeBehavior;

.field public static final enum CONSTANT_DESCENT:Lorg/apache/poi/java/awt/Component$BaselineResizeBehavior;

.field public static final enum OTHER:Lorg/apache/poi/java/awt/Component$BaselineResizeBehavior;


# direct methods
.method public static constructor <clinit>()V
    .locals 9

    new-instance v0, Lorg/apache/poi/java/awt/Component$BaselineResizeBehavior;

    const-string v1, "CONSTANT_ASCENT"

    const/4 v2, 0x0

    invoke-direct {v0, v1, v2}, Lorg/apache/poi/java/awt/Component$BaselineResizeBehavior;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lorg/apache/poi/java/awt/Component$BaselineResizeBehavior;->CONSTANT_ASCENT:Lorg/apache/poi/java/awt/Component$BaselineResizeBehavior;

    new-instance v1, Lorg/apache/poi/java/awt/Component$BaselineResizeBehavior;

    const-string v3, "CONSTANT_DESCENT"

    const/4 v4, 0x1

    invoke-direct {v1, v3, v4}, Lorg/apache/poi/java/awt/Component$BaselineResizeBehavior;-><init>(Ljava/lang/String;I)V

    sput-object v1, Lorg/apache/poi/java/awt/Component$BaselineResizeBehavior;->CONSTANT_DESCENT:Lorg/apache/poi/java/awt/Component$BaselineResizeBehavior;

    new-instance v3, Lorg/apache/poi/java/awt/Component$BaselineResizeBehavior;

    const-string v5, "CENTER_OFFSET"

    const/4 v6, 0x2

    invoke-direct {v3, v5, v6}, Lorg/apache/poi/java/awt/Component$BaselineResizeBehavior;-><init>(Ljava/lang/String;I)V

    sput-object v3, Lorg/apache/poi/java/awt/Component$BaselineResizeBehavior;->CENTER_OFFSET:Lorg/apache/poi/java/awt/Component$BaselineResizeBehavior;

    new-instance v5, Lorg/apache/poi/java/awt/Component$BaselineResizeBehavior;

    const-string v7, "OTHER"

    const/4 v8, 0x3

    invoke-direct {v5, v7, v8}, Lorg/apache/poi/java/awt/Component$BaselineResizeBehavior;-><init>(Ljava/lang/String;I)V

    sput-object v5, Lorg/apache/poi/java/awt/Component$BaselineResizeBehavior;->OTHER:Lorg/apache/poi/java/awt/Component$BaselineResizeBehavior;

    const/4 v7, 0x4

    new-array v7, v7, [Lorg/apache/poi/java/awt/Component$BaselineResizeBehavior;

    aput-object v0, v7, v2

    aput-object v1, v7, v4

    aput-object v3, v7, v6

    aput-object v5, v7, v8

    sput-object v7, Lorg/apache/poi/java/awt/Component$BaselineResizeBehavior;->$VALUES:[Lorg/apache/poi/java/awt/Component$BaselineResizeBehavior;

    return-void
.end method

.method private constructor <init>(Ljava/lang/String;I)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()V"
        }
    .end annotation

    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    return-void
.end method

.method public static valueOf(Ljava/lang/String;)Lorg/apache/poi/java/awt/Component$BaselineResizeBehavior;
    .locals 1

    const-class v0, Lorg/apache/poi/java/awt/Component$BaselineResizeBehavior;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object p0

    check-cast p0, Lorg/apache/poi/java/awt/Component$BaselineResizeBehavior;

    return-object p0
.end method

.method public static values()[Lorg/apache/poi/java/awt/Component$BaselineResizeBehavior;
    .locals 1

    sget-object v0, Lorg/apache/poi/java/awt/Component$BaselineResizeBehavior;->$VALUES:[Lorg/apache/poi/java/awt/Component$BaselineResizeBehavior;

    invoke-virtual {v0}, [Lorg/apache/poi/java/awt/Component$BaselineResizeBehavior;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lorg/apache/poi/java/awt/Component$BaselineResizeBehavior;

    return-object v0
.end method
