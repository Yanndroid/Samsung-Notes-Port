.class public Lcom/samsung/android/sdk/pen/document/util/LogUtil;
.super Ljava/lang/Object;
.source "SourceFile"


# static fields
.field private static final STR_USER_MODE:Ljava/lang/String; = "[##### User mode]"

.field private static final mIsEngineerMode:Z


# direct methods
.method public static constructor <clinit>()V
    .locals 2

    sget-object v0, Landroid/os/Build;->TYPE:Ljava/lang/String;

    const-string v1, "eng"

    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    sput-boolean v0, Lcom/samsung/android/sdk/pen/document/util/LogUtil;->mIsEngineerMode:Z

    return-void
.end method

.method private constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static logPath(Ljava/lang/String;)Ljava/lang/String;
    .locals 2

    sget-boolean v0, Lcom/samsung/android/sdk/pen/document/util/LogUtil;->mIsEngineerMode:Z

    const/4 v1, 0x1

    if-ne v0, v1, :cond_0

    return-object p0

    :cond_0
    const-string p0, "[##### User mode]"

    return-object p0
.end method
