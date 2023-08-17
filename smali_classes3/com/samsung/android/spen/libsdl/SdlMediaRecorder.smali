.class public Lcom/samsung/android/spen/libsdl/SdlMediaRecorder;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcom/samsung/android/spen/libinterface/MediaRecorderInterface;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/samsung/android/spen/libsdl/SdlMediaRecorder$ProxyErrorListener;,
        Lcom/samsung/android/spen/libsdl/SdlMediaRecorder$ProxyInfoListener;,
        Lcom/samsung/android/spen/libsdl/SdlMediaRecorder$MediaRecorderAsyncTask;,
        Lcom/samsung/android/spen/libsdl/SdlMediaRecorder$ParamType;
    }
.end annotation


# static fields
.field public static final MEDIA_ERROR_SERVER_DIED:I = 0x64

.field public static final MEDIA_RECORDER_ERROR_BUFFER_OVERFLOW:I = 0x2

.field public static final MEDIA_RECORDER_ERROR_UNKNOWN:I = 0x1

.field public static final MEDIA_RECORDER_INFO_COMPLETION_STATUS:I = 0x322

.field public static final MEDIA_RECORDER_INFO_DURATION_PROGRESS:I = 0x385

.field public static final MEDIA_RECORDER_INFO_FILESIZE_PROGRESS:I = 0x384

.field public static final MEDIA_RECORDER_INFO_MAX_DURATION_REACHED:I = 0x320

.field public static final MEDIA_RECORDER_INFO_MAX_FILESIZE_REACHED:I = 0x321

.field public static final MEDIA_RECORDER_INFO_NO_NETWORK:I = 0x38e

.field public static final MEDIA_RECORDER_INFO_POOR_NETWORK:I = 0x38f

.field public static final MEDIA_RECORDER_INFO_PROGRESS_FRAME_STATUS:I = 0x323

.field public static final MEDIA_RECORDER_INFO_PROGRESS_TIME_STATUS:I = 0x324

.field public static final MEDIA_RECORDER_INFO_UNKNOWN:I = 0x1

.field private static final TAG:Ljava/lang/String; = "SdlMediaRecorder"


# instance fields
.field private mErrorListener:Ljava/lang/Object;

.field private mInfoListener:Ljava/lang/Object;

.field private mListener:Lcom/samsung/android/spen/libinterface/MediaRecorderInterface$ActionListener;

.field private mResultFilePath:Ljava/lang/String;

.field public mSecMediaRecorder:Ljava/lang/Object;

.field public mSecMediaRecorderClass:Ljava/lang/Class;

.field private mTimeListener:Lcom/samsung/android/spen/libinterface/MediaRecorderInterface$TimeListener;


# direct methods
.method public constructor <init>()V
    .locals 2

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x0

    iput-object v0, p0, Lcom/samsung/android/spen/libsdl/SdlMediaRecorder;->mResultFilePath:Ljava/lang/String;

    iput-object v0, p0, Lcom/samsung/android/spen/libsdl/SdlMediaRecorder;->mInfoListener:Ljava/lang/Object;

    iput-object v0, p0, Lcom/samsung/android/spen/libsdl/SdlMediaRecorder;->mErrorListener:Ljava/lang/Object;

    iput-object v0, p0, Lcom/samsung/android/spen/libsdl/SdlMediaRecorder;->mListener:Lcom/samsung/android/spen/libinterface/MediaRecorderInterface$ActionListener;

    iput-object v0, p0, Lcom/samsung/android/spen/libsdl/SdlMediaRecorder;->mTimeListener:Lcom/samsung/android/spen/libinterface/MediaRecorderInterface$TimeListener;

    :try_start_0
    invoke-direct {p0}, Lcom/samsung/android/spen/libsdl/SdlMediaRecorder;->createNewInstance()V
    :try_end_0
    .catch Ljava/lang/ClassNotFoundException; {:try_start_0 .. :try_end_0} :catch_2
    .catch Ljava/lang/InstantiationException; {:try_start_0 .. :try_end_0} :catch_1
    .catch Ljava/lang/IllegalAccessException; {:try_start_0 .. :try_end_0} :catch_0

    return-void

    :catch_0
    move-exception v0

    new-instance v1, Ljava/lang/Exception;

    invoke-direct {v1, v0}, Ljava/lang/Exception;-><init>(Ljava/lang/Throwable;)V

    throw v1

    :catch_1
    move-exception v0

    new-instance v1, Ljava/lang/Exception;

    invoke-direct {v1, v0}, Ljava/lang/Exception;-><init>(Ljava/lang/Throwable;)V

    throw v1

    :catch_2
    move-exception v0

    new-instance v1, Ljava/lang/Exception;

    invoke-direct {v1, v0}, Ljava/lang/Exception;-><init>(Ljava/lang/Throwable;)V

    throw v1
.end method

.method public static synthetic access$000(Lcom/samsung/android/spen/libsdl/SdlMediaRecorder;)Ljava/lang/String;
    .locals 0

    iget-object p0, p0, Lcom/samsung/android/spen/libsdl/SdlMediaRecorder;->mResultFilePath:Ljava/lang/String;

    return-object p0
.end method

.method public static synthetic access$100(Lcom/samsung/android/spen/libsdl/SdlMediaRecorder;)Z
    .locals 0

    invoke-direct {p0}, Lcom/samsung/android/spen/libsdl/SdlMediaRecorder;->startImpl()Z

    move-result p0

    return p0
.end method

.method public static synthetic access$200(Lcom/samsung/android/spen/libsdl/SdlMediaRecorder;)V
    .locals 0

    invoke-direct {p0}, Lcom/samsung/android/spen/libsdl/SdlMediaRecorder;->setOnInfoListener()V

    return-void
.end method

.method public static synthetic access$300(Lcom/samsung/android/spen/libsdl/SdlMediaRecorder;)V
    .locals 0

    invoke-direct {p0}, Lcom/samsung/android/spen/libsdl/SdlMediaRecorder;->setOnErrorListener()V

    return-void
.end method

.method public static synthetic access$400(Lcom/samsung/android/spen/libsdl/SdlMediaRecorder;Ljava/lang/Throwable;)V
    .locals 0

    invoke-direct {p0, p1}, Lcom/samsung/android/spen/libsdl/SdlMediaRecorder;->printLog(Ljava/lang/Throwable;)V

    return-void
.end method

.method public static synthetic access$700(Lcom/samsung/android/spen/libsdl/SdlMediaRecorder;)Lcom/samsung/android/spen/libinterface/MediaRecorderInterface$ActionListener;
    .locals 0

    iget-object p0, p0, Lcom/samsung/android/spen/libsdl/SdlMediaRecorder;->mListener:Lcom/samsung/android/spen/libinterface/MediaRecorderInterface$ActionListener;

    return-object p0
.end method

.method public static synthetic access$800(Lcom/samsung/android/spen/libsdl/SdlMediaRecorder;)Lcom/samsung/android/spen/libinterface/MediaRecorderInterface$TimeListener;
    .locals 0

    iget-object p0, p0, Lcom/samsung/android/spen/libsdl/SdlMediaRecorder;->mTimeListener:Lcom/samsung/android/spen/libinterface/MediaRecorderInterface$TimeListener;

    return-object p0
.end method

.method private createErrorListener()V
    .locals 8

    iget-object v0, p0, Lcom/samsung/android/spen/libsdl/SdlMediaRecorder;->mSecMediaRecorder:Ljava/lang/Object;

    if-eqz v0, :cond_1

    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Class;->getDeclaredClasses()[Ljava/lang/Class;

    move-result-object v0

    array-length v1, v0

    const/4 v2, 0x0

    move v3, v2

    :goto_0
    if-ge v3, v1, :cond_1

    aget-object v4, v0, v3

    invoke-virtual {v4}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v5

    const-string v6, "OnErrorListener"

    invoke-virtual {v5, v6}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v5

    if-eqz v5, :cond_0

    const/4 v5, 0x1

    new-array v5, v5, [Ljava/lang/Class;

    aput-object v4, v5, v2

    invoke-virtual {v4}, Ljava/lang/Class;->getClassLoader()Ljava/lang/ClassLoader;

    move-result-object v4

    new-instance v6, Lcom/samsung/android/spen/libsdl/SdlMediaRecorder$ProxyErrorListener;

    const/4 v7, 0x0

    invoke-direct {v6, v7}, Lcom/samsung/android/spen/libsdl/SdlMediaRecorder$ProxyErrorListener;-><init>(Lcom/samsung/android/spen/libsdl/SdlMediaRecorder$1;)V

    invoke-static {v4, v5, v6}, Ljava/lang/reflect/Proxy;->newProxyInstance(Ljava/lang/ClassLoader;[Ljava/lang/Class;Ljava/lang/reflect/InvocationHandler;)Ljava/lang/Object;

    move-result-object v4

    iput-object v4, p0, Lcom/samsung/android/spen/libsdl/SdlMediaRecorder;->mErrorListener:Ljava/lang/Object;

    :cond_0
    add-int/lit8 v3, v3, 0x1

    goto :goto_0

    :cond_1
    return-void
.end method

.method private createInfoListener()V
    .locals 8

    iget-object v0, p0, Lcom/samsung/android/spen/libsdl/SdlMediaRecorder;->mSecMediaRecorder:Ljava/lang/Object;

    if-eqz v0, :cond_1

    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Class;->getDeclaredClasses()[Ljava/lang/Class;

    move-result-object v0

    array-length v1, v0

    const/4 v2, 0x0

    move v3, v2

    :goto_0
    if-ge v3, v1, :cond_1

    aget-object v4, v0, v3

    invoke-virtual {v4}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v5

    const-string v6, "OnInfoListener"

    invoke-virtual {v5, v6}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v5

    if-eqz v5, :cond_0

    const/4 v5, 0x1

    new-array v5, v5, [Ljava/lang/Class;

    aput-object v4, v5, v2

    invoke-virtual {v4}, Ljava/lang/Class;->getClassLoader()Ljava/lang/ClassLoader;

    move-result-object v4

    new-instance v6, Lcom/samsung/android/spen/libsdl/SdlMediaRecorder$ProxyInfoListener;

    const/4 v7, 0x0

    invoke-direct {v6, p0, v7}, Lcom/samsung/android/spen/libsdl/SdlMediaRecorder$ProxyInfoListener;-><init>(Lcom/samsung/android/spen/libsdl/SdlMediaRecorder;Lcom/samsung/android/spen/libsdl/SdlMediaRecorder$1;)V

    invoke-static {v4, v5, v6}, Ljava/lang/reflect/Proxy;->newProxyInstance(Ljava/lang/ClassLoader;[Ljava/lang/Class;Ljava/lang/reflect/InvocationHandler;)Ljava/lang/Object;

    move-result-object v4

    iput-object v4, p0, Lcom/samsung/android/spen/libsdl/SdlMediaRecorder;->mInfoListener:Ljava/lang/Object;

    :cond_0
    add-int/lit8 v3, v3, 0x1

    goto :goto_0

    :cond_1
    return-void
.end method

.method private createNewInstance()V
    .locals 2

    :try_start_0
    const-string v0, "com.sec.android.secmediarecorder.SecMediaRecorder"

    invoke-static {v0}, Ljava/lang/Class;->forName(Ljava/lang/String;)Ljava/lang/Class;

    move-result-object v0

    iput-object v0, p0, Lcom/samsung/android/spen/libsdl/SdlMediaRecorder;->mSecMediaRecorderClass:Ljava/lang/Class;

    invoke-virtual {v0}, Ljava/lang/Class;->newInstance()Ljava/lang/Object;

    move-result-object v0

    iput-object v0, p0, Lcom/samsung/android/spen/libsdl/SdlMediaRecorder;->mSecMediaRecorder:Ljava/lang/Object;
    :try_end_0
    .catch Ljava/lang/InstantiationException; {:try_start_0 .. :try_end_0} :catch_2
    .catch Ljava/lang/IllegalAccessException; {:try_start_0 .. :try_end_0} :catch_1
    .catch Ljava/lang/ClassNotFoundException; {:try_start_0 .. :try_end_0} :catch_0

    return-void

    :catch_0
    move-exception v0

    invoke-direct {p0, v0}, Lcom/samsung/android/spen/libsdl/SdlMediaRecorder;->printLog(Ljava/lang/Throwable;)V

    new-instance v1, Ljava/lang/ClassNotFoundException;

    invoke-virtual {v0}, Ljava/lang/ClassNotFoundException;->getMessage()Ljava/lang/String;

    move-result-object v0

    invoke-direct {v1, v0}, Ljava/lang/ClassNotFoundException;-><init>(Ljava/lang/String;)V

    throw v1

    :catch_1
    move-exception v0

    invoke-direct {p0, v0}, Lcom/samsung/android/spen/libsdl/SdlMediaRecorder;->printLog(Ljava/lang/Throwable;)V

    new-instance v1, Ljava/lang/IllegalAccessException;

    invoke-virtual {v0}, Ljava/lang/IllegalAccessException;->getMessage()Ljava/lang/String;

    move-result-object v0

    invoke-direct {v1, v0}, Ljava/lang/IllegalAccessException;-><init>(Ljava/lang/String;)V

    throw v1

    :catch_2
    move-exception v0

    invoke-direct {p0, v0}, Lcom/samsung/android/spen/libsdl/SdlMediaRecorder;->printLog(Ljava/lang/Throwable;)V

    new-instance v1, Ljava/lang/InstantiationException;

    invoke-virtual {v0}, Ljava/lang/InstantiationException;->getMessage()Ljava/lang/String;

    move-result-object v0

    invoke-direct {v1, v0}, Ljava/lang/InstantiationException;-><init>(Ljava/lang/String;)V

    throw v1
.end method

.method private getMethod(Ljava/lang/String;Lcom/samsung/android/spen/libsdl/SdlMediaRecorder$ParamType;)Ljava/lang/reflect/Method;
    .locals 3

    sget-object v0, Lcom/samsung/android/spen/libsdl/SdlMediaRecorder$1;->$SwitchMap$com$samsung$android$spen$libsdl$SdlMediaRecorder$ParamType:[I

    invoke-virtual {p2}, Ljava/lang/Enum;->ordinal()I

    move-result p2

    aget p2, v0, p2

    const/4 v0, 0x0

    const/4 v1, 0x1

    if-eq p2, v1, :cond_3

    const/4 v2, 0x2

    if-eq p2, v2, :cond_2

    const/4 v2, 0x3

    if-eq p2, v2, :cond_1

    const/4 v2, 0x4

    if-eq p2, v2, :cond_0

    const/4 p1, 0x0

    return-object p1

    :cond_0
    new-array p2, v1, [Ljava/lang/Class;

    sget-object v1, Ljava/lang/Long;->TYPE:Ljava/lang/Class;

    aput-object v1, p2, v0

    iget-object v0, p0, Lcom/samsung/android/spen/libsdl/SdlMediaRecorder;->mSecMediaRecorderClass:Ljava/lang/Class;

    invoke-virtual {v0, p1, p2}, Ljava/lang/Class;->getMethod(Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;

    move-result-object p1

    return-object p1

    :cond_1
    new-array p2, v1, [Ljava/lang/Class;

    const-class v1, Ljava/lang/String;

    aput-object v1, p2, v0

    iget-object v0, p0, Lcom/samsung/android/spen/libsdl/SdlMediaRecorder;->mSecMediaRecorderClass:Ljava/lang/Class;

    invoke-virtual {v0, p1, p2}, Ljava/lang/Class;->getMethod(Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;

    move-result-object p1

    return-object p1

    :cond_2
    new-array p2, v1, [Ljava/lang/Class;

    sget-object v1, Ljava/lang/Integer;->TYPE:Ljava/lang/Class;

    aput-object v1, p2, v0

    iget-object v0, p0, Lcom/samsung/android/spen/libsdl/SdlMediaRecorder;->mSecMediaRecorderClass:Ljava/lang/Class;

    invoke-virtual {v0, p1, p2}, Ljava/lang/Class;->getMethod(Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;

    move-result-object p1

    return-object p1

    :cond_3
    new-array p2, v0, [Ljava/lang/Class;

    iget-object v0, p0, Lcom/samsung/android/spen/libsdl/SdlMediaRecorder;->mSecMediaRecorderClass:Ljava/lang/Class;

    invoke-virtual {v0, p1, p2}, Ljava/lang/Class;->getMethod(Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;

    move-result-object p1

    return-object p1
.end method

.method public static isRecorderWorking()Z
    .locals 5

    const-string v0, "SdlMediaRecorder"

    const/4 v1, 0x0

    :try_start_0
    const-string v2, "com.sec.android.secmediarecorder.SecMediaRecorder"

    invoke-static {v2}, Ljava/lang/Class;->forName(Ljava/lang/String;)Ljava/lang/Class;

    move-result-object v2

    const-string v3, "isRecording"

    const/4 v4, 0x0

    invoke-virtual {v2, v3, v4}, Ljava/lang/Class;->getDeclaredMethod(Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;

    move-result-object v3

    if-eqz v3, :cond_1

    invoke-virtual {v3, v2, v4}, Ljava/lang/reflect/Method;->invoke(Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    instance-of v3, v2, Ljava/lang/Boolean;

    if-eqz v3, :cond_1

    sget-object v0, Ljava/lang/Boolean;->TRUE:Ljava/lang/Boolean;
    :try_end_0
    .catch Ljava/lang/NoSuchMethodException; {:try_start_0 .. :try_end_0} :catch_1
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    if-ne v2, v0, :cond_0

    const/4 v1, 0x1

    :cond_0
    return v1

    :catch_0
    const-string v2, "Exception"

    goto :goto_0

    :catch_1
    const-string v2, "NoSuchMethodException"

    :goto_0
    invoke-static {v0, v2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    :cond_1
    return v1
.end method

.method private printLog(Ljava/lang/Throwable;)V
    .locals 1

    invoke-static {p1}, Landroid/util/Log;->getStackTraceString(Ljava/lang/Throwable;)Ljava/lang/String;

    move-result-object p1

    const-string v0, "SdlMediaRecorder"

    invoke-static {v0, p1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    return-void
.end method

.method private setDurationInterval(I)V
    .locals 4

    :try_start_0
    const-string/jumbo v0, "setDurationInterval"

    sget-object v1, Lcom/samsung/android/spen/libsdl/SdlMediaRecorder$ParamType;->Integer:Lcom/samsung/android/spen/libsdl/SdlMediaRecorder$ParamType;

    invoke-direct {p0, v0, v1}, Lcom/samsung/android/spen/libsdl/SdlMediaRecorder;->getMethod(Ljava/lang/String;Lcom/samsung/android/spen/libsdl/SdlMediaRecorder$ParamType;)Ljava/lang/reflect/Method;

    move-result-object v0

    if-eqz v0, :cond_0

    iget-object v1, p0, Lcom/samsung/android/spen/libsdl/SdlMediaRecorder;->mSecMediaRecorder:Ljava/lang/Object;

    const/4 v2, 0x1

    new-array v2, v2, [Ljava/lang/Object;

    const/4 v3, 0x0

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p1

    aput-object p1, v2, v3

    invoke-virtual {v0, v1, v2}, Ljava/lang/reflect/Method;->invoke(Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;
    :try_end_0
    .catch Ljava/lang/IllegalStateException; {:try_start_0 .. :try_end_0} :catch_5
    .catch Ljava/lang/IllegalAccessException; {:try_start_0 .. :try_end_0} :catch_4
    .catch Ljava/lang/reflect/InvocationTargetException; {:try_start_0 .. :try_end_0} :catch_3
    .catch Ljava/lang/ClassNotFoundException; {:try_start_0 .. :try_end_0} :catch_2
    .catch Ljava/lang/NoSuchMethodException; {:try_start_0 .. :try_end_0} :catch_1
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_1

    :catch_0
    move-exception p1

    goto :goto_0

    :catch_1
    move-exception p1

    goto :goto_0

    :catch_2
    move-exception p1

    goto :goto_0

    :catch_3
    move-exception p1

    goto :goto_0

    :catch_4
    move-exception p1

    goto :goto_0

    :catch_5
    move-exception p1

    :goto_0
    invoke-direct {p0, p1}, Lcom/samsung/android/spen/libsdl/SdlMediaRecorder;->printLog(Ljava/lang/Throwable;)V

    :cond_0
    :goto_1
    return-void
.end method

.method private setOnErrorListener()V
    .locals 6

    iget-object v0, p0, Lcom/samsung/android/spen/libsdl/SdlMediaRecorder;->mSecMediaRecorder:Ljava/lang/Object;

    if-eqz v0, :cond_0

    invoke-direct {p0}, Lcom/samsung/android/spen/libsdl/SdlMediaRecorder;->createErrorListener()V

    :try_start_0
    const-string v0, "com.sec.android.secmediarecorder.SecMediaRecorder$OnErrorListener"

    invoke-static {v0}, Ljava/lang/Class;->forName(Ljava/lang/String;)Ljava/lang/Class;

    move-result-object v0

    iget-object v1, p0, Lcom/samsung/android/spen/libsdl/SdlMediaRecorder;->mSecMediaRecorder:Ljava/lang/Object;

    invoke-virtual {v1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v1

    const-string/jumbo v2, "setOnErrorListener"

    const/4 v3, 0x1

    new-array v4, v3, [Ljava/lang/Class;

    const/4 v5, 0x0

    aput-object v0, v4, v5

    invoke-virtual {v1, v2, v4}, Ljava/lang/Class;->getMethod(Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;

    move-result-object v0

    iget-object v1, p0, Lcom/samsung/android/spen/libsdl/SdlMediaRecorder;->mSecMediaRecorder:Ljava/lang/Object;

    new-array v2, v3, [Ljava/lang/Object;

    iget-object v3, p0, Lcom/samsung/android/spen/libsdl/SdlMediaRecorder;->mErrorListener:Ljava/lang/Object;

    aput-object v3, v2, v5

    invoke-virtual {v0, v1, v2}, Ljava/lang/reflect/Method;->invoke(Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;

    const-string v0, "SdlMediaRecorder"

    const-string/jumbo v1, "setOnErrorListener: success"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_0
    .catch Ljava/lang/IllegalAccessException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Ljava/lang/reflect/InvocationTargetException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Ljava/lang/ClassNotFoundException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Ljava/lang/NoSuchMethodException; {:try_start_0 .. :try_end_0} :catch_0

    :catch_0
    :cond_0
    return-void
.end method

.method private setOnInfoListener()V
    .locals 6

    iget-object v0, p0, Lcom/samsung/android/spen/libsdl/SdlMediaRecorder;->mSecMediaRecorder:Ljava/lang/Object;

    if-eqz v0, :cond_0

    invoke-direct {p0}, Lcom/samsung/android/spen/libsdl/SdlMediaRecorder;->createInfoListener()V

    :try_start_0
    const-string v0, "com.sec.android.secmediarecorder.SecMediaRecorder$OnInfoListener"

    invoke-static {v0}, Ljava/lang/Class;->forName(Ljava/lang/String;)Ljava/lang/Class;

    move-result-object v0

    iget-object v1, p0, Lcom/samsung/android/spen/libsdl/SdlMediaRecorder;->mSecMediaRecorder:Ljava/lang/Object;

    invoke-virtual {v1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v1

    const-string/jumbo v2, "setOnInfoListener"

    const/4 v3, 0x1

    new-array v4, v3, [Ljava/lang/Class;

    const/4 v5, 0x0

    aput-object v0, v4, v5

    invoke-virtual {v1, v2, v4}, Ljava/lang/Class;->getMethod(Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;

    move-result-object v0

    iget-object v1, p0, Lcom/samsung/android/spen/libsdl/SdlMediaRecorder;->mSecMediaRecorder:Ljava/lang/Object;

    new-array v2, v3, [Ljava/lang/Object;

    iget-object v3, p0, Lcom/samsung/android/spen/libsdl/SdlMediaRecorder;->mInfoListener:Ljava/lang/Object;

    aput-object v3, v2, v5

    invoke-virtual {v0, v1, v2}, Ljava/lang/reflect/Method;->invoke(Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;

    const-string v0, "SdlMediaRecorder"

    const-string/jumbo v1, "setOnInfoListener: success"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_0
    .catch Ljava/lang/IllegalAccessException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Ljava/lang/reflect/InvocationTargetException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Ljava/lang/ClassNotFoundException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Ljava/lang/NoSuchMethodException; {:try_start_0 .. :try_end_0} :catch_0

    :catch_0
    :cond_0
    return-void
.end method

.method private startImpl()Z
    .locals 4

    const/4 v0, 0x0

    :try_start_0
    const-string/jumbo v1, "start"

    sget-object v2, Lcom/samsung/android/spen/libsdl/SdlMediaRecorder$ParamType;->Void:Lcom/samsung/android/spen/libsdl/SdlMediaRecorder$ParamType;

    invoke-direct {p0, v1, v2}, Lcom/samsung/android/spen/libsdl/SdlMediaRecorder;->getMethod(Ljava/lang/String;Lcom/samsung/android/spen/libsdl/SdlMediaRecorder$ParamType;)Ljava/lang/reflect/Method;

    move-result-object v1

    if-eqz v1, :cond_0

    iget-object v2, p0, Lcom/samsung/android/spen/libsdl/SdlMediaRecorder;->mSecMediaRecorder:Ljava/lang/Object;

    const/4 v3, 0x0

    invoke-virtual {v1, v2, v3}, Ljava/lang/reflect/Method;->invoke(Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;
    :try_end_0
    .catch Ljava/lang/IllegalStateException; {:try_start_0 .. :try_end_0} :catch_5
    .catch Ljava/lang/IllegalAccessException; {:try_start_0 .. :try_end_0} :catch_4
    .catch Ljava/lang/reflect/InvocationTargetException; {:try_start_0 .. :try_end_0} :catch_3
    .catch Ljava/lang/ClassNotFoundException; {:try_start_0 .. :try_end_0} :catch_2
    .catch Ljava/lang/NoSuchMethodException; {:try_start_0 .. :try_end_0} :catch_1
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    :cond_0
    const/4 v0, 0x1

    return v0

    :catch_0
    move-exception v1

    invoke-direct {p0, v1}, Lcom/samsung/android/spen/libsdl/SdlMediaRecorder;->printLog(Ljava/lang/Throwable;)V

    return v0

    :catch_1
    move-exception v1

    invoke-direct {p0, v1}, Lcom/samsung/android/spen/libsdl/SdlMediaRecorder;->printLog(Ljava/lang/Throwable;)V

    return v0

    :catch_2
    move-exception v1

    invoke-direct {p0, v1}, Lcom/samsung/android/spen/libsdl/SdlMediaRecorder;->printLog(Ljava/lang/Throwable;)V

    return v0

    :catch_3
    move-exception v1

    invoke-direct {p0, v1}, Lcom/samsung/android/spen/libsdl/SdlMediaRecorder;->printLog(Ljava/lang/Throwable;)V

    return v0

    :catch_4
    move-exception v1

    invoke-direct {p0, v1}, Lcom/samsung/android/spen/libsdl/SdlMediaRecorder;->printLog(Ljava/lang/Throwable;)V

    return v0

    :catch_5
    move-exception v1

    invoke-direct {p0, v1}, Lcom/samsung/android/spen/libsdl/SdlMediaRecorder;->printLog(Ljava/lang/Throwable;)V

    return v0
.end method


# virtual methods
.method public cancel()Z
    .locals 4

    const/4 v0, 0x0

    :try_start_0
    const-string/jumbo v1, "stop"

    sget-object v2, Lcom/samsung/android/spen/libsdl/SdlMediaRecorder$ParamType;->Void:Lcom/samsung/android/spen/libsdl/SdlMediaRecorder$ParamType;

    invoke-direct {p0, v1, v2}, Lcom/samsung/android/spen/libsdl/SdlMediaRecorder;->getMethod(Ljava/lang/String;Lcom/samsung/android/spen/libsdl/SdlMediaRecorder$ParamType;)Ljava/lang/reflect/Method;

    move-result-object v1

    const/4 v2, 0x0

    if-eqz v1, :cond_0

    iget-object v3, p0, Lcom/samsung/android/spen/libsdl/SdlMediaRecorder;->mSecMediaRecorder:Ljava/lang/Object;

    invoke-virtual {v1, v3, v2}, Ljava/lang/reflect/Method;->invoke(Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;

    :cond_0
    invoke-virtual {p0}, Lcom/samsung/android/spen/libsdl/SdlMediaRecorder;->reset()V

    invoke-virtual {p0}, Lcom/samsung/android/spen/libsdl/SdlMediaRecorder;->release()V

    iput-object v2, p0, Lcom/samsung/android/spen/libsdl/SdlMediaRecorder;->mSecMediaRecorderClass:Ljava/lang/Class;

    iput-object v2, p0, Lcom/samsung/android/spen/libsdl/SdlMediaRecorder;->mSecMediaRecorder:Ljava/lang/Object;
    :try_end_0
    .catch Ljava/lang/IllegalStateException; {:try_start_0 .. :try_end_0} :catch_5
    .catch Ljava/lang/IllegalAccessException; {:try_start_0 .. :try_end_0} :catch_4
    .catch Ljava/lang/reflect/InvocationTargetException; {:try_start_0 .. :try_end_0} :catch_3
    .catch Ljava/lang/ClassNotFoundException; {:try_start_0 .. :try_end_0} :catch_2
    .catch Ljava/lang/NoSuchMethodException; {:try_start_0 .. :try_end_0} :catch_1
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    const/4 v0, 0x1

    return v0

    :catch_0
    move-exception v1

    invoke-direct {p0, v1}, Lcom/samsung/android/spen/libsdl/SdlMediaRecorder;->printLog(Ljava/lang/Throwable;)V

    return v0

    :catch_1
    move-exception v1

    invoke-direct {p0, v1}, Lcom/samsung/android/spen/libsdl/SdlMediaRecorder;->printLog(Ljava/lang/Throwable;)V

    return v0

    :catch_2
    move-exception v1

    invoke-direct {p0, v1}, Lcom/samsung/android/spen/libsdl/SdlMediaRecorder;->printLog(Ljava/lang/Throwable;)V

    return v0

    :catch_3
    move-exception v1

    invoke-direct {p0, v1}, Lcom/samsung/android/spen/libsdl/SdlMediaRecorder;->printLog(Ljava/lang/Throwable;)V

    return v0

    :catch_4
    move-exception v1

    invoke-direct {p0, v1}, Lcom/samsung/android/spen/libsdl/SdlMediaRecorder;->printLog(Ljava/lang/Throwable;)V

    return v0

    :catch_5
    move-exception v1

    invoke-direct {p0, v1}, Lcom/samsung/android/spen/libsdl/SdlMediaRecorder;->printLog(Ljava/lang/Throwable;)V

    return v0
.end method

.method public getMaxAmplitude()I
    .locals 3

    :try_start_0
    const-string v0, "getMaxAmplitude"

    sget-object v1, Lcom/samsung/android/spen/libsdl/SdlMediaRecorder$ParamType;->Void:Lcom/samsung/android/spen/libsdl/SdlMediaRecorder$ParamType;

    invoke-direct {p0, v0, v1}, Lcom/samsung/android/spen/libsdl/SdlMediaRecorder;->getMethod(Ljava/lang/String;Lcom/samsung/android/spen/libsdl/SdlMediaRecorder$ParamType;)Ljava/lang/reflect/Method;

    move-result-object v0

    if-eqz v0, :cond_0

    iget-object v1, p0, Lcom/samsung/android/spen/libsdl/SdlMediaRecorder;->mSecMediaRecorder:Ljava/lang/Object;

    const/4 v2, 0x0

    invoke-virtual {v0, v1, v2}, Ljava/lang/reflect/Method;->invoke(Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Integer;

    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v0
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    return v0

    :catch_0
    move-exception v0

    invoke-direct {p0, v0}, Lcom/samsung/android/spen/libsdl/SdlMediaRecorder;->printLog(Ljava/lang/Throwable;)V

    :cond_0
    const/4 v0, -0x1

    return v0
.end method

.method public isPauseSupported()Z
    .locals 4

    const/4 v0, 0x0

    :try_start_0
    const-string v1, "com.sec.android.secmediarecorder.SecMediaRecorder"

    invoke-static {v1}, Ljava/lang/Class;->forName(Ljava/lang/String;)Ljava/lang/Class;

    move-result-object v1

    new-array v2, v0, [Ljava/lang/Class;

    const-string v3, "pause"

    invoke-virtual {v1, v3, v2}, Ljava/lang/Class;->getMethod(Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;
    :try_end_0
    .catch Ljava/lang/ClassNotFoundException; {:try_start_0 .. :try_end_0} :catch_1
    .catch Ljava/lang/NoSuchMethodException; {:try_start_0 .. :try_end_0} :catch_0

    const/4 v0, 0x1

    return v0

    :catch_0
    move-exception v1

    invoke-direct {p0, v1}, Lcom/samsung/android/spen/libsdl/SdlMediaRecorder;->printLog(Ljava/lang/Throwable;)V

    return v0

    :catch_1
    move-exception v1

    invoke-direct {p0, v1}, Lcom/samsung/android/spen/libsdl/SdlMediaRecorder;->printLog(Ljava/lang/Throwable;)V

    return v0
.end method

.method public isStarting()Z
    .locals 1

    const/4 v0, 0x0

    return v0
.end method

.method public pause(Lcom/samsung/android/spen/libinterface/MediaRecorderInterface$MediaRecorderListener;)Z
    .locals 4

    const/4 v0, 0x0

    :try_start_0
    const-string v1, "pause"

    sget-object v2, Lcom/samsung/android/spen/libsdl/SdlMediaRecorder$ParamType;->Void:Lcom/samsung/android/spen/libsdl/SdlMediaRecorder$ParamType;

    invoke-direct {p0, v1, v2}, Lcom/samsung/android/spen/libsdl/SdlMediaRecorder;->getMethod(Ljava/lang/String;Lcom/samsung/android/spen/libsdl/SdlMediaRecorder$ParamType;)Ljava/lang/reflect/Method;

    move-result-object v1

    if-eqz v1, :cond_0

    iget-object v2, p0, Lcom/samsung/android/spen/libsdl/SdlMediaRecorder;->mSecMediaRecorder:Ljava/lang/Object;

    const/4 v3, 0x0

    invoke-virtual {v1, v2, v3}, Ljava/lang/reflect/Method;->invoke(Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;
    :try_end_0
    .catch Ljava/lang/IllegalStateException; {:try_start_0 .. :try_end_0} :catch_5
    .catch Ljava/lang/IllegalAccessException; {:try_start_0 .. :try_end_0} :catch_4
    .catch Ljava/lang/reflect/InvocationTargetException; {:try_start_0 .. :try_end_0} :catch_3
    .catch Ljava/lang/ClassNotFoundException; {:try_start_0 .. :try_end_0} :catch_2
    .catch Ljava/lang/NoSuchMethodException; {:try_start_0 .. :try_end_0} :catch_1
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    :cond_0
    invoke-interface {p1}, Lcom/samsung/android/spen/libinterface/MediaRecorderInterface$MediaRecorderListener;->onPaused()V

    const/4 p1, 0x1

    return p1

    :catch_0
    move-exception p1

    invoke-direct {p0, p1}, Lcom/samsung/android/spen/libsdl/SdlMediaRecorder;->printLog(Ljava/lang/Throwable;)V

    return v0

    :catch_1
    move-exception p1

    invoke-direct {p0, p1}, Lcom/samsung/android/spen/libsdl/SdlMediaRecorder;->printLog(Ljava/lang/Throwable;)V

    return v0

    :catch_2
    move-exception p1

    invoke-direct {p0, p1}, Lcom/samsung/android/spen/libsdl/SdlMediaRecorder;->printLog(Ljava/lang/Throwable;)V

    return v0

    :catch_3
    move-exception p1

    invoke-direct {p0, p1}, Lcom/samsung/android/spen/libsdl/SdlMediaRecorder;->printLog(Ljava/lang/Throwable;)V

    return v0

    :catch_4
    move-exception p1

    invoke-direct {p0, p1}, Lcom/samsung/android/spen/libsdl/SdlMediaRecorder;->printLog(Ljava/lang/Throwable;)V

    return v0

    :catch_5
    move-exception p1

    invoke-direct {p0, p1}, Lcom/samsung/android/spen/libsdl/SdlMediaRecorder;->printLog(Ljava/lang/Throwable;)V

    return v0
.end method

.method public prepare()V
    .locals 3

    const-string v0, "SdlMediaRecorder"

    const-string v1, "prepare"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    sget-object v0, Lcom/samsung/android/spen/libsdl/SdlMediaRecorder$ParamType;->Void:Lcom/samsung/android/spen/libsdl/SdlMediaRecorder$ParamType;

    invoke-direct {p0, v1, v0}, Lcom/samsung/android/spen/libsdl/SdlMediaRecorder;->getMethod(Ljava/lang/String;Lcom/samsung/android/spen/libsdl/SdlMediaRecorder$ParamType;)Ljava/lang/reflect/Method;

    move-result-object v0

    if-eqz v0, :cond_0

    iget-object v1, p0, Lcom/samsung/android/spen/libsdl/SdlMediaRecorder;->mSecMediaRecorder:Ljava/lang/Object;

    const/4 v2, 0x0

    invoke-virtual {v0, v1, v2}, Ljava/lang/reflect/Method;->invoke(Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;

    :cond_0
    return-void
.end method

.method public prepareRecording(Ljava/lang/String;II)Z
    .locals 3

    const v0, 0xac44

    const/4 v1, 0x0

    :try_start_0
    invoke-virtual {p0, v0}, Lcom/samsung/android/spen/libsdl/SdlMediaRecorder;->setAudioSamplingRate(I)V

    const v0, 0x1f400

    invoke-virtual {p0, v0}, Lcom/samsung/android/spen/libsdl/SdlMediaRecorder;->setAudioEncodingBitRate(I)V

    const/4 v0, 0x2

    invoke-virtual {p0, v0}, Lcom/samsung/android/spen/libsdl/SdlMediaRecorder;->setAudioChannels(I)V

    const/4 v0, 0x1

    invoke-virtual {p0, v0}, Lcom/samsung/android/spen/libsdl/SdlMediaRecorder;->setAudioSource(I)V

    invoke-virtual {p0, v0}, Lcom/samsung/android/spen/libsdl/SdlMediaRecorder;->setOutputFormat(I)V

    const/4 v2, 0x3

    invoke-virtual {p0, v2}, Lcom/samsung/android/spen/libsdl/SdlMediaRecorder;->setAudioEncoder(I)V

    invoke-virtual {p0, p1}, Lcom/samsung/android/spen/libsdl/SdlMediaRecorder;->setOutputFile(Ljava/lang/String;)V

    invoke-virtual {p0, p2}, Lcom/samsung/android/spen/libsdl/SdlMediaRecorder;->setMaxDuration(I)V

    int-to-long p1, p3

    invoke-virtual {p0, p1, p2}, Lcom/samsung/android/spen/libsdl/SdlMediaRecorder;->setMaxFileSize(J)V

    const/16 p1, 0x3e8

    invoke-direct {p0, p1}, Lcom/samsung/android/spen/libsdl/SdlMediaRecorder;->setDurationInterval(I)V

    invoke-virtual {p0}, Lcom/samsung/android/spen/libsdl/SdlMediaRecorder;->prepare()V
    :try_end_0
    .catch Ljava/lang/IllegalStateException; {:try_start_0 .. :try_end_0} :catch_2
    .catch Ljava/lang/RuntimeException; {:try_start_0 .. :try_end_0} :catch_1
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    return v0

    :catch_0
    move-exception p1

    invoke-direct {p0, p1}, Lcom/samsung/android/spen/libsdl/SdlMediaRecorder;->printLog(Ljava/lang/Throwable;)V

    return v1

    :catch_1
    move-exception p1

    invoke-direct {p0, p1}, Lcom/samsung/android/spen/libsdl/SdlMediaRecorder;->printLog(Ljava/lang/Throwable;)V

    return v1

    :catch_2
    move-exception p1

    invoke-direct {p0, p1}, Lcom/samsung/android/spen/libsdl/SdlMediaRecorder;->printLog(Ljava/lang/Throwable;)V

    return v1
.end method

.method public release()V
    .locals 3

    sget-object v0, Lcom/samsung/android/spen/libsdl/SdlMediaRecorder$ParamType;->Void:Lcom/samsung/android/spen/libsdl/SdlMediaRecorder$ParamType;

    const-string v1, "release"

    invoke-direct {p0, v1, v0}, Lcom/samsung/android/spen/libsdl/SdlMediaRecorder;->getMethod(Ljava/lang/String;Lcom/samsung/android/spen/libsdl/SdlMediaRecorder$ParamType;)Ljava/lang/reflect/Method;

    move-result-object v0

    if-eqz v0, :cond_0

    iget-object v1, p0, Lcom/samsung/android/spen/libsdl/SdlMediaRecorder;->mSecMediaRecorder:Ljava/lang/Object;

    const/4 v2, 0x0

    invoke-virtual {v0, v1, v2}, Ljava/lang/reflect/Method;->invoke(Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;

    :cond_0
    return-void
.end method

.method public reset()V
    .locals 3

    const-string v0, "SdlMediaRecorder"

    const-string v1, "reset"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    sget-object v0, Lcom/samsung/android/spen/libsdl/SdlMediaRecorder$ParamType;->Void:Lcom/samsung/android/spen/libsdl/SdlMediaRecorder$ParamType;

    invoke-direct {p0, v1, v0}, Lcom/samsung/android/spen/libsdl/SdlMediaRecorder;->getMethod(Ljava/lang/String;Lcom/samsung/android/spen/libsdl/SdlMediaRecorder$ParamType;)Ljava/lang/reflect/Method;

    move-result-object v0

    if-eqz v0, :cond_0

    iget-object v1, p0, Lcom/samsung/android/spen/libsdl/SdlMediaRecorder;->mSecMediaRecorder:Ljava/lang/Object;

    const/4 v2, 0x0

    invoke-virtual {v0, v1, v2}, Ljava/lang/reflect/Method;->invoke(Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;

    :cond_0
    return-void
.end method

.method public resume(Lcom/samsung/android/spen/libinterface/MediaRecorderInterface$MediaRecorderListener;)Z
    .locals 4

    const/4 v0, 0x0

    :try_start_0
    const-string v1, "resume"

    sget-object v2, Lcom/samsung/android/spen/libsdl/SdlMediaRecorder$ParamType;->Void:Lcom/samsung/android/spen/libsdl/SdlMediaRecorder$ParamType;

    invoke-direct {p0, v1, v2}, Lcom/samsung/android/spen/libsdl/SdlMediaRecorder;->getMethod(Ljava/lang/String;Lcom/samsung/android/spen/libsdl/SdlMediaRecorder$ParamType;)Ljava/lang/reflect/Method;

    move-result-object v1

    if-eqz v1, :cond_0

    iget-object v2, p0, Lcom/samsung/android/spen/libsdl/SdlMediaRecorder;->mSecMediaRecorder:Ljava/lang/Object;

    const/4 v3, 0x0

    invoke-virtual {v1, v2, v3}, Ljava/lang/reflect/Method;->invoke(Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;
    :try_end_0
    .catch Ljava/lang/IllegalStateException; {:try_start_0 .. :try_end_0} :catch_5
    .catch Ljava/lang/IllegalAccessException; {:try_start_0 .. :try_end_0} :catch_4
    .catch Ljava/lang/reflect/InvocationTargetException; {:try_start_0 .. :try_end_0} :catch_3
    .catch Ljava/lang/ClassNotFoundException; {:try_start_0 .. :try_end_0} :catch_2
    .catch Ljava/lang/NoSuchMethodException; {:try_start_0 .. :try_end_0} :catch_1
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    :cond_0
    invoke-interface {p1}, Lcom/samsung/android/spen/libinterface/MediaRecorderInterface$MediaRecorderListener;->onResumed()V

    const/4 p1, 0x1

    return p1

    :catch_0
    move-exception p1

    invoke-direct {p0, p1}, Lcom/samsung/android/spen/libsdl/SdlMediaRecorder;->printLog(Ljava/lang/Throwable;)V

    return v0

    :catch_1
    move-exception p1

    invoke-direct {p0, p1}, Lcom/samsung/android/spen/libsdl/SdlMediaRecorder;->printLog(Ljava/lang/Throwable;)V

    return v0

    :catch_2
    move-exception p1

    invoke-direct {p0, p1}, Lcom/samsung/android/spen/libsdl/SdlMediaRecorder;->printLog(Ljava/lang/Throwable;)V

    return v0

    :catch_3
    move-exception p1

    invoke-direct {p0, p1}, Lcom/samsung/android/spen/libsdl/SdlMediaRecorder;->printLog(Ljava/lang/Throwable;)V

    return v0

    :catch_4
    move-exception p1

    invoke-direct {p0, p1}, Lcom/samsung/android/spen/libsdl/SdlMediaRecorder;->printLog(Ljava/lang/Throwable;)V

    return v0

    :catch_5
    move-exception p1

    invoke-direct {p0, p1}, Lcom/samsung/android/spen/libsdl/SdlMediaRecorder;->printLog(Ljava/lang/Throwable;)V

    return v0
.end method

.method public setActionListener(Lcom/samsung/android/spen/libinterface/MediaRecorderInterface$ActionListener;)V
    .locals 0

    iput-object p1, p0, Lcom/samsung/android/spen/libsdl/SdlMediaRecorder;->mListener:Lcom/samsung/android/spen/libinterface/MediaRecorderInterface$ActionListener;

    return-void
.end method

.method public setAudioChannels(I)V
    .locals 4

    const-string v0, "SdlMediaRecorder"

    const-string/jumbo v1, "setAudioChannels"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    sget-object v0, Lcom/samsung/android/spen/libsdl/SdlMediaRecorder$ParamType;->Integer:Lcom/samsung/android/spen/libsdl/SdlMediaRecorder$ParamType;

    invoke-direct {p0, v1, v0}, Lcom/samsung/android/spen/libsdl/SdlMediaRecorder;->getMethod(Ljava/lang/String;Lcom/samsung/android/spen/libsdl/SdlMediaRecorder$ParamType;)Ljava/lang/reflect/Method;

    move-result-object v0

    if-eqz v0, :cond_0

    iget-object v1, p0, Lcom/samsung/android/spen/libsdl/SdlMediaRecorder;->mSecMediaRecorder:Ljava/lang/Object;

    const/4 v2, 0x1

    new-array v2, v2, [Ljava/lang/Object;

    const/4 v3, 0x0

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p1

    aput-object p1, v2, v3

    invoke-virtual {v0, v1, v2}, Ljava/lang/reflect/Method;->invoke(Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;

    :cond_0
    return-void
.end method

.method public setAudioEncoder(I)V
    .locals 4

    const-string v0, "SdlMediaRecorder"

    const-string/jumbo v1, "setAudioEncoder"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    sget-object v0, Lcom/samsung/android/spen/libsdl/SdlMediaRecorder$ParamType;->Integer:Lcom/samsung/android/spen/libsdl/SdlMediaRecorder$ParamType;

    invoke-direct {p0, v1, v0}, Lcom/samsung/android/spen/libsdl/SdlMediaRecorder;->getMethod(Ljava/lang/String;Lcom/samsung/android/spen/libsdl/SdlMediaRecorder$ParamType;)Ljava/lang/reflect/Method;

    move-result-object v0

    if-eqz v0, :cond_0

    iget-object v1, p0, Lcom/samsung/android/spen/libsdl/SdlMediaRecorder;->mSecMediaRecorder:Ljava/lang/Object;

    const/4 v2, 0x1

    new-array v2, v2, [Ljava/lang/Object;

    const/4 v3, 0x0

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p1

    aput-object p1, v2, v3

    invoke-virtual {v0, v1, v2}, Ljava/lang/reflect/Method;->invoke(Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;

    :cond_0
    return-void
.end method

.method public setAudioEncodingBitRate(I)V
    .locals 4

    const-string v0, "SdlMediaRecorder"

    const-string/jumbo v1, "setAudioEncodingBitRate"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    sget-object v0, Lcom/samsung/android/spen/libsdl/SdlMediaRecorder$ParamType;->Integer:Lcom/samsung/android/spen/libsdl/SdlMediaRecorder$ParamType;

    invoke-direct {p0, v1, v0}, Lcom/samsung/android/spen/libsdl/SdlMediaRecorder;->getMethod(Ljava/lang/String;Lcom/samsung/android/spen/libsdl/SdlMediaRecorder$ParamType;)Ljava/lang/reflect/Method;

    move-result-object v0

    if-eqz v0, :cond_0

    iget-object v1, p0, Lcom/samsung/android/spen/libsdl/SdlMediaRecorder;->mSecMediaRecorder:Ljava/lang/Object;

    const/4 v2, 0x1

    new-array v2, v2, [Ljava/lang/Object;

    const/4 v3, 0x0

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p1

    aput-object p1, v2, v3

    invoke-virtual {v0, v1, v2}, Ljava/lang/reflect/Method;->invoke(Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;

    :cond_0
    return-void
.end method

.method public setAudioSamplingRate(I)V
    .locals 4

    const-string v0, "SdlMediaRecorder"

    const-string/jumbo v1, "setAudioSamplingRate"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    sget-object v0, Lcom/samsung/android/spen/libsdl/SdlMediaRecorder$ParamType;->Integer:Lcom/samsung/android/spen/libsdl/SdlMediaRecorder$ParamType;

    invoke-direct {p0, v1, v0}, Lcom/samsung/android/spen/libsdl/SdlMediaRecorder;->getMethod(Ljava/lang/String;Lcom/samsung/android/spen/libsdl/SdlMediaRecorder$ParamType;)Ljava/lang/reflect/Method;

    move-result-object v0

    if-eqz v0, :cond_0

    iget-object v1, p0, Lcom/samsung/android/spen/libsdl/SdlMediaRecorder;->mSecMediaRecorder:Ljava/lang/Object;

    const/4 v2, 0x1

    new-array v2, v2, [Ljava/lang/Object;

    const/4 v3, 0x0

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p1

    aput-object p1, v2, v3

    invoke-virtual {v0, v1, v2}, Ljava/lang/reflect/Method;->invoke(Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;

    :cond_0
    return-void
.end method

.method public setAudioSource(I)V
    .locals 4

    const-string v0, "SdlMediaRecorder"

    const-string/jumbo v1, "setAudioSource"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    sget-object v0, Lcom/samsung/android/spen/libsdl/SdlMediaRecorder$ParamType;->Integer:Lcom/samsung/android/spen/libsdl/SdlMediaRecorder$ParamType;

    invoke-direct {p0, v1, v0}, Lcom/samsung/android/spen/libsdl/SdlMediaRecorder;->getMethod(Ljava/lang/String;Lcom/samsung/android/spen/libsdl/SdlMediaRecorder$ParamType;)Ljava/lang/reflect/Method;

    move-result-object v0

    if-eqz v0, :cond_0

    iget-object v1, p0, Lcom/samsung/android/spen/libsdl/SdlMediaRecorder;->mSecMediaRecorder:Ljava/lang/Object;

    const/4 v2, 0x1

    new-array v2, v2, [Ljava/lang/Object;

    const/4 v3, 0x0

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p1

    aput-object p1, v2, v3

    invoke-virtual {v0, v1, v2}, Ljava/lang/reflect/Method;->invoke(Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;

    :cond_0
    return-void
.end method

.method public setMaxDuration(I)V
    .locals 4

    :try_start_0
    const-string/jumbo v0, "setMaxDuration"

    sget-object v1, Lcom/samsung/android/spen/libsdl/SdlMediaRecorder$ParamType;->Integer:Lcom/samsung/android/spen/libsdl/SdlMediaRecorder$ParamType;

    invoke-direct {p0, v0, v1}, Lcom/samsung/android/spen/libsdl/SdlMediaRecorder;->getMethod(Ljava/lang/String;Lcom/samsung/android/spen/libsdl/SdlMediaRecorder$ParamType;)Ljava/lang/reflect/Method;

    move-result-object v0

    if-eqz v0, :cond_0

    iget-object v1, p0, Lcom/samsung/android/spen/libsdl/SdlMediaRecorder;->mSecMediaRecorder:Ljava/lang/Object;

    const/4 v2, 0x1

    new-array v2, v2, [Ljava/lang/Object;

    const/4 v3, 0x0

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p1

    aput-object p1, v2, v3

    invoke-virtual {v0, v1, v2}, Ljava/lang/reflect/Method;->invoke(Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;
    :try_end_0
    .catch Ljava/lang/IllegalStateException; {:try_start_0 .. :try_end_0} :catch_5
    .catch Ljava/lang/IllegalAccessException; {:try_start_0 .. :try_end_0} :catch_4
    .catch Ljava/lang/reflect/InvocationTargetException; {:try_start_0 .. :try_end_0} :catch_3
    .catch Ljava/lang/ClassNotFoundException; {:try_start_0 .. :try_end_0} :catch_2
    .catch Ljava/lang/NoSuchMethodException; {:try_start_0 .. :try_end_0} :catch_1
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_1

    :catch_0
    move-exception p1

    goto :goto_0

    :catch_1
    move-exception p1

    goto :goto_0

    :catch_2
    move-exception p1

    goto :goto_0

    :catch_3
    move-exception p1

    goto :goto_0

    :catch_4
    move-exception p1

    goto :goto_0

    :catch_5
    move-exception p1

    :goto_0
    invoke-direct {p0, p1}, Lcom/samsung/android/spen/libsdl/SdlMediaRecorder;->printLog(Ljava/lang/Throwable;)V

    :cond_0
    :goto_1
    return-void
.end method

.method public setMaxFileSize(J)V
    .locals 4

    :try_start_0
    const-string/jumbo v0, "setMaxFileSize"

    sget-object v1, Lcom/samsung/android/spen/libsdl/SdlMediaRecorder$ParamType;->Long:Lcom/samsung/android/spen/libsdl/SdlMediaRecorder$ParamType;

    invoke-direct {p0, v0, v1}, Lcom/samsung/android/spen/libsdl/SdlMediaRecorder;->getMethod(Ljava/lang/String;Lcom/samsung/android/spen/libsdl/SdlMediaRecorder$ParamType;)Ljava/lang/reflect/Method;

    move-result-object v0

    if-eqz v0, :cond_0

    iget-object v1, p0, Lcom/samsung/android/spen/libsdl/SdlMediaRecorder;->mSecMediaRecorder:Ljava/lang/Object;

    const/4 v2, 0x1

    new-array v2, v2, [Ljava/lang/Object;

    const/4 v3, 0x0

    invoke-static {p1, p2}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object p1

    aput-object p1, v2, v3

    invoke-virtual {v0, v1, v2}, Ljava/lang/reflect/Method;->invoke(Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;
    :try_end_0
    .catch Ljava/lang/IllegalStateException; {:try_start_0 .. :try_end_0} :catch_5
    .catch Ljava/lang/IllegalAccessException; {:try_start_0 .. :try_end_0} :catch_4
    .catch Ljava/lang/reflect/InvocationTargetException; {:try_start_0 .. :try_end_0} :catch_3
    .catch Ljava/lang/ClassNotFoundException; {:try_start_0 .. :try_end_0} :catch_2
    .catch Ljava/lang/NoSuchMethodException; {:try_start_0 .. :try_end_0} :catch_1
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_1

    :catch_0
    move-exception p1

    goto :goto_0

    :catch_1
    move-exception p1

    goto :goto_0

    :catch_2
    move-exception p1

    goto :goto_0

    :catch_3
    move-exception p1

    goto :goto_0

    :catch_4
    move-exception p1

    goto :goto_0

    :catch_5
    move-exception p1

    :goto_0
    invoke-direct {p0, p1}, Lcom/samsung/android/spen/libsdl/SdlMediaRecorder;->printLog(Ljava/lang/Throwable;)V

    :cond_0
    :goto_1
    return-void
.end method

.method public setOutputFile(Ljava/lang/String;)V
    .locals 4

    const-string v0, "SdlMediaRecorder"

    const-string/jumbo v1, "setOutputFile"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    sget-object v0, Lcom/samsung/android/spen/libsdl/SdlMediaRecorder$ParamType;->String:Lcom/samsung/android/spen/libsdl/SdlMediaRecorder$ParamType;

    invoke-direct {p0, v1, v0}, Lcom/samsung/android/spen/libsdl/SdlMediaRecorder;->getMethod(Ljava/lang/String;Lcom/samsung/android/spen/libsdl/SdlMediaRecorder$ParamType;)Ljava/lang/reflect/Method;

    move-result-object v0

    if-eqz v0, :cond_0

    iget-object v1, p0, Lcom/samsung/android/spen/libsdl/SdlMediaRecorder;->mSecMediaRecorder:Ljava/lang/Object;

    const/4 v2, 0x1

    new-array v2, v2, [Ljava/lang/Object;

    const/4 v3, 0x0

    aput-object p1, v2, v3

    invoke-virtual {v0, v1, v2}, Ljava/lang/reflect/Method;->invoke(Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;

    :cond_0
    return-void
.end method

.method public setOutputFormat(I)V
    .locals 4

    const-string v0, "SdlMediaRecorder"

    const-string/jumbo v1, "setOutputFormat"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    sget-object v0, Lcom/samsung/android/spen/libsdl/SdlMediaRecorder$ParamType;->Integer:Lcom/samsung/android/spen/libsdl/SdlMediaRecorder$ParamType;

    invoke-direct {p0, v1, v0}, Lcom/samsung/android/spen/libsdl/SdlMediaRecorder;->getMethod(Ljava/lang/String;Lcom/samsung/android/spen/libsdl/SdlMediaRecorder$ParamType;)Ljava/lang/reflect/Method;

    move-result-object v0

    if-eqz v0, :cond_0

    iget-object v1, p0, Lcom/samsung/android/spen/libsdl/SdlMediaRecorder;->mSecMediaRecorder:Ljava/lang/Object;

    const/4 v2, 0x1

    new-array v2, v2, [Ljava/lang/Object;

    const/4 v3, 0x0

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p1

    aput-object p1, v2, v3

    invoke-virtual {v0, v1, v2}, Ljava/lang/reflect/Method;->invoke(Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;

    :cond_0
    return-void
.end method

.method public setTimeListener(Lcom/samsung/android/spen/libinterface/MediaRecorderInterface$TimeListener;)V
    .locals 0

    iput-object p1, p0, Lcom/samsung/android/spen/libsdl/SdlMediaRecorder;->mTimeListener:Lcom/samsung/android/spen/libinterface/MediaRecorderInterface$TimeListener;

    return-void
.end method

.method public start(Ljava/lang/String;Lcom/samsung/android/spen/libinterface/MediaRecorderInterface$MediaRecorderListener;II)Z
    .locals 1

    iput-object p1, p0, Lcom/samsung/android/spen/libsdl/SdlMediaRecorder;->mResultFilePath:Ljava/lang/String;

    new-instance p1, Lcom/samsung/android/spen/libsdl/SdlMediaRecorder$MediaRecorderAsyncTask;

    invoke-direct {p1, p0}, Lcom/samsung/android/spen/libsdl/SdlMediaRecorder$MediaRecorderAsyncTask;-><init>(Lcom/samsung/android/spen/libsdl/SdlMediaRecorder;)V

    iput p3, p1, Lcom/samsung/android/spen/libsdl/SdlMediaRecorder$MediaRecorderAsyncTask;->mMaxDuration:I

    iput p4, p1, Lcom/samsung/android/spen/libsdl/SdlMediaRecorder$MediaRecorderAsyncTask;->mMaxFileSize:I

    const/4 p3, 0x1

    new-array p4, p3, [Lcom/samsung/android/spen/libinterface/MediaRecorderInterface$MediaRecorderListener;

    const/4 v0, 0x0

    aput-object p2, p4, v0

    invoke-virtual {p1, p4}, Landroid/os/AsyncTask;->execute([Ljava/lang/Object;)Landroid/os/AsyncTask;

    return p3
.end method

.method public stop(Lcom/samsung/android/spen/libinterface/MediaRecorderInterface$MediaRecorderListener;)Z
    .locals 4

    const/4 v0, 0x0

    :try_start_0
    const-string/jumbo v1, "stop"

    sget-object v2, Lcom/samsung/android/spen/libsdl/SdlMediaRecorder$ParamType;->Void:Lcom/samsung/android/spen/libsdl/SdlMediaRecorder$ParamType;

    invoke-direct {p0, v1, v2}, Lcom/samsung/android/spen/libsdl/SdlMediaRecorder;->getMethod(Ljava/lang/String;Lcom/samsung/android/spen/libsdl/SdlMediaRecorder$ParamType;)Ljava/lang/reflect/Method;

    move-result-object v1

    const/4 v2, 0x0

    if-eqz v1, :cond_0

    iget-object v3, p0, Lcom/samsung/android/spen/libsdl/SdlMediaRecorder;->mSecMediaRecorder:Ljava/lang/Object;

    invoke-virtual {v1, v3, v2}, Ljava/lang/reflect/Method;->invoke(Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;

    :cond_0
    invoke-virtual {p0}, Lcom/samsung/android/spen/libsdl/SdlMediaRecorder;->reset()V

    invoke-virtual {p0}, Lcom/samsung/android/spen/libsdl/SdlMediaRecorder;->release()V

    iput-object v2, p0, Lcom/samsung/android/spen/libsdl/SdlMediaRecorder;->mSecMediaRecorderClass:Ljava/lang/Class;

    iput-object v2, p0, Lcom/samsung/android/spen/libsdl/SdlMediaRecorder;->mSecMediaRecorder:Ljava/lang/Object;
    :try_end_0
    .catch Ljava/lang/IllegalStateException; {:try_start_0 .. :try_end_0} :catch_5
    .catch Ljava/lang/IllegalAccessException; {:try_start_0 .. :try_end_0} :catch_4
    .catch Ljava/lang/reflect/InvocationTargetException; {:try_start_0 .. :try_end_0} :catch_3
    .catch Ljava/lang/ClassNotFoundException; {:try_start_0 .. :try_end_0} :catch_2
    .catch Ljava/lang/NoSuchMethodException; {:try_start_0 .. :try_end_0} :catch_1
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    invoke-interface {p1}, Lcom/samsung/android/spen/libinterface/MediaRecorderInterface$MediaRecorderListener;->onStopped()V

    const/4 p1, 0x1

    return p1

    :catch_0
    move-exception p1

    invoke-direct {p0, p1}, Lcom/samsung/android/spen/libsdl/SdlMediaRecorder;->printLog(Ljava/lang/Throwable;)V

    return v0

    :catch_1
    move-exception p1

    invoke-direct {p0, p1}, Lcom/samsung/android/spen/libsdl/SdlMediaRecorder;->printLog(Ljava/lang/Throwable;)V

    return v0

    :catch_2
    move-exception p1

    invoke-direct {p0, p1}, Lcom/samsung/android/spen/libsdl/SdlMediaRecorder;->printLog(Ljava/lang/Throwable;)V

    return v0

    :catch_3
    move-exception p1

    invoke-direct {p0, p1}, Lcom/samsung/android/spen/libsdl/SdlMediaRecorder;->printLog(Ljava/lang/Throwable;)V

    return v0

    :catch_4
    move-exception p1

    invoke-direct {p0, p1}, Lcom/samsung/android/spen/libsdl/SdlMediaRecorder;->printLog(Ljava/lang/Throwable;)V

    return v0

    :catch_5
    move-exception p1

    invoke-direct {p0, p1}, Lcom/samsung/android/spen/libsdl/SdlMediaRecorder;->printLog(Ljava/lang/Throwable;)V

    return v0
.end method
