.class public final enum Lorg/apache/poi/java/awt/TrayIcon$MessageType;
.super Ljava/lang/Enum;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lorg/apache/poi/java/awt/TrayIcon;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x4019
    name = "MessageType"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum<",
        "Lorg/apache/poi/java/awt/TrayIcon$MessageType;",
        ">;"
    }
.end annotation


# static fields
.field private static final synthetic $VALUES:[Lorg/apache/poi/java/awt/TrayIcon$MessageType;

.field public static final enum ERROR:Lorg/apache/poi/java/awt/TrayIcon$MessageType;

.field public static final enum INFO:Lorg/apache/poi/java/awt/TrayIcon$MessageType;

.field public static final enum NONE:Lorg/apache/poi/java/awt/TrayIcon$MessageType;

.field public static final enum WARNING:Lorg/apache/poi/java/awt/TrayIcon$MessageType;


# direct methods
.method public static constructor <clinit>()V
    .locals 9

    new-instance v0, Lorg/apache/poi/java/awt/TrayIcon$MessageType;

    const-string v1, "ERROR"

    const/4 v2, 0x0

    invoke-direct {v0, v1, v2}, Lorg/apache/poi/java/awt/TrayIcon$MessageType;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lorg/apache/poi/java/awt/TrayIcon$MessageType;->ERROR:Lorg/apache/poi/java/awt/TrayIcon$MessageType;

    new-instance v1, Lorg/apache/poi/java/awt/TrayIcon$MessageType;

    const-string v3, "WARNING"

    const/4 v4, 0x1

    invoke-direct {v1, v3, v4}, Lorg/apache/poi/java/awt/TrayIcon$MessageType;-><init>(Ljava/lang/String;I)V

    sput-object v1, Lorg/apache/poi/java/awt/TrayIcon$MessageType;->WARNING:Lorg/apache/poi/java/awt/TrayIcon$MessageType;

    new-instance v3, Lorg/apache/poi/java/awt/TrayIcon$MessageType;

    const-string v5, "INFO"

    const/4 v6, 0x2

    invoke-direct {v3, v5, v6}, Lorg/apache/poi/java/awt/TrayIcon$MessageType;-><init>(Ljava/lang/String;I)V

    sput-object v3, Lorg/apache/poi/java/awt/TrayIcon$MessageType;->INFO:Lorg/apache/poi/java/awt/TrayIcon$MessageType;

    new-instance v5, Lorg/apache/poi/java/awt/TrayIcon$MessageType;

    const-string v7, "NONE"

    const/4 v8, 0x3

    invoke-direct {v5, v7, v8}, Lorg/apache/poi/java/awt/TrayIcon$MessageType;-><init>(Ljava/lang/String;I)V

    sput-object v5, Lorg/apache/poi/java/awt/TrayIcon$MessageType;->NONE:Lorg/apache/poi/java/awt/TrayIcon$MessageType;

    const/4 v7, 0x4

    new-array v7, v7, [Lorg/apache/poi/java/awt/TrayIcon$MessageType;

    aput-object v0, v7, v2

    aput-object v1, v7, v4

    aput-object v3, v7, v6

    aput-object v5, v7, v8

    sput-object v7, Lorg/apache/poi/java/awt/TrayIcon$MessageType;->$VALUES:[Lorg/apache/poi/java/awt/TrayIcon$MessageType;

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

.method public static valueOf(Ljava/lang/String;)Lorg/apache/poi/java/awt/TrayIcon$MessageType;
    .locals 1

    const-class v0, Lorg/apache/poi/java/awt/TrayIcon$MessageType;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object p0

    check-cast p0, Lorg/apache/poi/java/awt/TrayIcon$MessageType;

    return-object p0
.end method

.method public static values()[Lorg/apache/poi/java/awt/TrayIcon$MessageType;
    .locals 1

    sget-object v0, Lorg/apache/poi/java/awt/TrayIcon$MessageType;->$VALUES:[Lorg/apache/poi/java/awt/TrayIcon$MessageType;

    invoke-virtual {v0}, [Lorg/apache/poi/java/awt/TrayIcon$MessageType;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lorg/apache/poi/java/awt/TrayIcon$MessageType;

    return-object v0
.end method
