.class public final enum Lcom/sec/vsg/voiceframework/NoiseChecker$Mode;
.super Ljava/lang/Enum;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/sec/vsg/voiceframework/NoiseChecker;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x4019
    name = "Mode"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum<",
        "Lcom/sec/vsg/voiceframework/NoiseChecker$Mode;",
        ">;"
    }
.end annotation


# static fields
.field private static final synthetic $VALUES:[Lcom/sec/vsg/voiceframework/NoiseChecker$Mode;

.field public static final enum DEFAULT:Lcom/sec/vsg/voiceframework/NoiseChecker$Mode;


# direct methods
.method public static constructor <clinit>()V
    .locals 3

    new-instance v0, Lcom/sec/vsg/voiceframework/NoiseChecker$Mode;

    const-string v1, "DEFAULT"

    const/4 v2, 0x0

    invoke-direct {v0, v1, v2}, Lcom/sec/vsg/voiceframework/NoiseChecker$Mode;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/sec/vsg/voiceframework/NoiseChecker$Mode;->DEFAULT:Lcom/sec/vsg/voiceframework/NoiseChecker$Mode;

    const/4 v1, 0x1

    new-array v1, v1, [Lcom/sec/vsg/voiceframework/NoiseChecker$Mode;

    aput-object v0, v1, v2

    sput-object v1, Lcom/sec/vsg/voiceframework/NoiseChecker$Mode;->$VALUES:[Lcom/sec/vsg/voiceframework/NoiseChecker$Mode;

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

.method public static valueOf(Ljava/lang/String;)Lcom/sec/vsg/voiceframework/NoiseChecker$Mode;
    .locals 1

    const-class v0, Lcom/sec/vsg/voiceframework/NoiseChecker$Mode;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object p0

    check-cast p0, Lcom/sec/vsg/voiceframework/NoiseChecker$Mode;

    return-object p0
.end method

.method public static values()[Lcom/sec/vsg/voiceframework/NoiseChecker$Mode;
    .locals 1

    sget-object v0, Lcom/sec/vsg/voiceframework/NoiseChecker$Mode;->$VALUES:[Lcom/sec/vsg/voiceframework/NoiseChecker$Mode;

    invoke-virtual {v0}, [Lcom/sec/vsg/voiceframework/NoiseChecker$Mode;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lcom/sec/vsg/voiceframework/NoiseChecker$Mode;

    return-object v0
.end method
