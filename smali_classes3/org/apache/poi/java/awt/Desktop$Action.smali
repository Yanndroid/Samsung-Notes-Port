.class public final enum Lorg/apache/poi/java/awt/Desktop$Action;
.super Ljava/lang/Enum;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lorg/apache/poi/java/awt/Desktop;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x4019
    name = "Action"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum<",
        "Lorg/apache/poi/java/awt/Desktop$Action;",
        ">;"
    }
.end annotation


# static fields
.field private static final synthetic $VALUES:[Lorg/apache/poi/java/awt/Desktop$Action;

.field public static final enum BROWSE:Lorg/apache/poi/java/awt/Desktop$Action;

.field public static final enum EDIT:Lorg/apache/poi/java/awt/Desktop$Action;

.field public static final enum MAIL:Lorg/apache/poi/java/awt/Desktop$Action;

.field public static final enum OPEN:Lorg/apache/poi/java/awt/Desktop$Action;

.field public static final enum PRINT:Lorg/apache/poi/java/awt/Desktop$Action;


# direct methods
.method public static constructor <clinit>()V
    .locals 11

    new-instance v0, Lorg/apache/poi/java/awt/Desktop$Action;

    const-string v1, "OPEN"

    const/4 v2, 0x0

    invoke-direct {v0, v1, v2}, Lorg/apache/poi/java/awt/Desktop$Action;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lorg/apache/poi/java/awt/Desktop$Action;->OPEN:Lorg/apache/poi/java/awt/Desktop$Action;

    new-instance v1, Lorg/apache/poi/java/awt/Desktop$Action;

    const-string v3, "EDIT"

    const/4 v4, 0x1

    invoke-direct {v1, v3, v4}, Lorg/apache/poi/java/awt/Desktop$Action;-><init>(Ljava/lang/String;I)V

    sput-object v1, Lorg/apache/poi/java/awt/Desktop$Action;->EDIT:Lorg/apache/poi/java/awt/Desktop$Action;

    new-instance v3, Lorg/apache/poi/java/awt/Desktop$Action;

    const-string v5, "PRINT"

    const/4 v6, 0x2

    invoke-direct {v3, v5, v6}, Lorg/apache/poi/java/awt/Desktop$Action;-><init>(Ljava/lang/String;I)V

    sput-object v3, Lorg/apache/poi/java/awt/Desktop$Action;->PRINT:Lorg/apache/poi/java/awt/Desktop$Action;

    new-instance v5, Lorg/apache/poi/java/awt/Desktop$Action;

    const-string v7, "MAIL"

    const/4 v8, 0x3

    invoke-direct {v5, v7, v8}, Lorg/apache/poi/java/awt/Desktop$Action;-><init>(Ljava/lang/String;I)V

    sput-object v5, Lorg/apache/poi/java/awt/Desktop$Action;->MAIL:Lorg/apache/poi/java/awt/Desktop$Action;

    new-instance v7, Lorg/apache/poi/java/awt/Desktop$Action;

    const-string v9, "BROWSE"

    const/4 v10, 0x4

    invoke-direct {v7, v9, v10}, Lorg/apache/poi/java/awt/Desktop$Action;-><init>(Ljava/lang/String;I)V

    sput-object v7, Lorg/apache/poi/java/awt/Desktop$Action;->BROWSE:Lorg/apache/poi/java/awt/Desktop$Action;

    const/4 v9, 0x5

    new-array v9, v9, [Lorg/apache/poi/java/awt/Desktop$Action;

    aput-object v0, v9, v2

    aput-object v1, v9, v4

    aput-object v3, v9, v6

    aput-object v5, v9, v8

    aput-object v7, v9, v10

    sput-object v9, Lorg/apache/poi/java/awt/Desktop$Action;->$VALUES:[Lorg/apache/poi/java/awt/Desktop$Action;

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

.method public static valueOf(Ljava/lang/String;)Lorg/apache/poi/java/awt/Desktop$Action;
    .locals 1

    const-class v0, Lorg/apache/poi/java/awt/Desktop$Action;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object p0

    check-cast p0, Lorg/apache/poi/java/awt/Desktop$Action;

    return-object p0
.end method

.method public static values()[Lorg/apache/poi/java/awt/Desktop$Action;
    .locals 1

    sget-object v0, Lorg/apache/poi/java/awt/Desktop$Action;->$VALUES:[Lorg/apache/poi/java/awt/Desktop$Action;

    invoke-virtual {v0}, [Lorg/apache/poi/java/awt/Desktop$Action;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lorg/apache/poi/java/awt/Desktop$Action;

    return-object v0
.end method
