.class public Lcom/samsung/android/spen/libwrapper/MediaRecorderWrapper;
.super Ljava/lang/Object;
.source "SourceFile"


# static fields
.field private static isSeDevice:Z = false


# instance fields
.field private instance:Lcom/samsung/android/spen/libinterface/MediaRecorderInterface;


# direct methods
.method public static constructor <clinit>()V
    .locals 0

    return-void
.end method

.method private constructor <init>(Lcom/samsung/android/spen/libinterface/MediaRecorderInterface;)V
    .locals 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    :try_start_0
    iput-object p1, p0, Lcom/samsung/android/spen/libwrapper/MediaRecorderWrapper;->instance:Lcom/samsung/android/spen/libinterface/MediaRecorderInterface;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_1
    .catch Ljava/lang/Error; {:try_start_0 .. :try_end_0} :catch_0

    return-void

    :catch_0
    move-exception p1

    goto :goto_0

    :catch_1
    move-exception p1

    :goto_0
    new-instance v0, Lcom/samsung/android/spen/libwrapper/utils/PlatformException;

    invoke-direct {v0, p1}, Lcom/samsung/android/spen/libwrapper/utils/PlatformException;-><init>(Ljava/lang/Throwable;)V

    throw v0
.end method

.method public static create(Landroid/content/Context;)Lcom/samsung/android/spen/libwrapper/MediaRecorderWrapper;
    .locals 2

    invoke-static {p0}, Lcom/samsung/android/spen/libwrapper/utils/PlatformUtils;->isSamsungDevice(Landroid/content/Context;)Z

    move-result v0

    if-eqz v0, :cond_1

    invoke-static {p0}, Lcom/samsung/android/spen/libwrapper/utils/PlatformUtils;->isSemDevice(Landroid/content/Context;)Z

    move-result p0

    if-eqz p0, :cond_0

    const/4 p0, 0x1

    sput-boolean p0, Lcom/samsung/android/spen/libwrapper/MediaRecorderWrapper;->isSeDevice:Z

    :try_start_0
    new-instance p0, Lcom/samsung/android/spen/libwrapper/MediaRecorderWrapper;

    new-instance v0, Lcom/samsung/android/spen/libse/SeMediaRecorder;

    invoke-direct {v0}, Lcom/samsung/android/spen/libse/SeMediaRecorder;-><init>()V

    invoke-direct {p0, v0}, Lcom/samsung/android/spen/libwrapper/MediaRecorderWrapper;-><init>(Lcom/samsung/android/spen/libinterface/MediaRecorderInterface;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_1
    .catch Ljava/lang/Error; {:try_start_0 .. :try_end_0} :catch_0

    return-object p0

    :catch_0
    move-exception p0

    goto :goto_0

    :catch_1
    move-exception p0

    :goto_0
    new-instance v0, Lcom/samsung/android/spen/libwrapper/utils/PlatformException;

    const-string v1, "SE"

    invoke-direct {v0, v1, p0}, Lcom/samsung/android/spen/libwrapper/utils/PlatformException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    throw v0

    :cond_0
    const/4 p0, 0x0

    sput-boolean p0, Lcom/samsung/android/spen/libwrapper/MediaRecorderWrapper;->isSeDevice:Z

    :try_start_1
    new-instance p0, Lcom/samsung/android/spen/libwrapper/MediaRecorderWrapper;

    new-instance v0, Lcom/samsung/android/spen/libsdl/SdlMediaRecorder;

    invoke-direct {v0}, Lcom/samsung/android/spen/libsdl/SdlMediaRecorder;-><init>()V

    invoke-direct {p0, v0}, Lcom/samsung/android/spen/libwrapper/MediaRecorderWrapper;-><init>(Lcom/samsung/android/spen/libinterface/MediaRecorderInterface;)V
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_3
    .catch Ljava/lang/Error; {:try_start_1 .. :try_end_1} :catch_2

    return-object p0

    :catch_2
    move-exception p0

    goto :goto_1

    :catch_3
    move-exception p0

    :goto_1
    new-instance v0, Lcom/samsung/android/spen/libwrapper/utils/PlatformException;

    const-string v1, "SDL"

    invoke-direct {v0, v1, p0}, Lcom/samsung/android/spen/libwrapper/utils/PlatformException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    throw v0

    :cond_1
    new-instance p0, Lcom/samsung/android/spen/libwrapper/utils/PlatformException;

    invoke-direct {p0}, Lcom/samsung/android/spen/libwrapper/utils/PlatformException;-><init>()V

    throw p0
.end method

.method public static create(Lcom/samsung/android/spen/libinterface/MediaRecorderInterface;)Lcom/samsung/android/spen/libwrapper/MediaRecorderWrapper;
    .locals 2

    :try_start_0
    new-instance v0, Lcom/samsung/android/spen/libwrapper/MediaRecorderWrapper;

    invoke-direct {v0, p0}, Lcom/samsung/android/spen/libwrapper/MediaRecorderWrapper;-><init>(Lcom/samsung/android/spen/libinterface/MediaRecorderInterface;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_1
    .catch Ljava/lang/Error; {:try_start_0 .. :try_end_0} :catch_0

    return-object v0

    :catch_0
    move-exception p0

    goto :goto_0

    :catch_1
    move-exception p0

    :goto_0
    new-instance v0, Lcom/samsung/android/spen/libwrapper/utils/PlatformException;

    const-string v1, "SE"

    invoke-direct {v0, v1, p0}, Lcom/samsung/android/spen/libwrapper/utils/PlatformException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    throw v0
.end method

.method public static isRecorderWorking()Z
    .locals 2

    :try_start_0
    sget-boolean v0, Lcom/samsung/android/spen/libwrapper/MediaRecorderWrapper;->isSeDevice:Z

    if-eqz v0, :cond_0

    invoke-static {}, Lcom/samsung/android/spen/libse/SeMediaRecorder;->isRecorderWorking()Z

    move-result v0

    return v0

    :cond_0
    invoke-static {}, Lcom/samsung/android/spen/libsdl/SdlMediaRecorder;->isRecorderWorking()Z

    move-result v0
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_1
    .catch Ljava/lang/Error; {:try_start_0 .. :try_end_0} :catch_0

    return v0

    :catch_0
    move-exception v0

    goto :goto_0

    :catch_1
    move-exception v0

    :goto_0
    new-instance v1, Lcom/samsung/android/spen/libwrapper/utils/PlatformException;

    invoke-direct {v1, v0}, Lcom/samsung/android/spen/libwrapper/utils/PlatformException;-><init>(Ljava/lang/Throwable;)V

    throw v1
.end method


# virtual methods
.method public cancel()Z
    .locals 2

    :try_start_0
    iget-object v0, p0, Lcom/samsung/android/spen/libwrapper/MediaRecorderWrapper;->instance:Lcom/samsung/android/spen/libinterface/MediaRecorderInterface;

    invoke-interface {v0}, Lcom/samsung/android/spen/libinterface/MediaRecorderInterface;->cancel()Z

    move-result v0
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_1
    .catch Ljava/lang/Error; {:try_start_0 .. :try_end_0} :catch_0

    return v0

    :catch_0
    move-exception v0

    goto :goto_0

    :catch_1
    move-exception v0

    :goto_0
    new-instance v1, Lcom/samsung/android/spen/libwrapper/utils/PlatformException;

    invoke-direct {v1, v0}, Lcom/samsung/android/spen/libwrapper/utils/PlatformException;-><init>(Ljava/lang/Throwable;)V

    throw v1
.end method

.method public getMaxAmplitude()I
    .locals 2

    :try_start_0
    iget-object v0, p0, Lcom/samsung/android/spen/libwrapper/MediaRecorderWrapper;->instance:Lcom/samsung/android/spen/libinterface/MediaRecorderInterface;

    invoke-interface {v0}, Lcom/samsung/android/spen/libinterface/MediaRecorderInterface;->getMaxAmplitude()I

    move-result v0
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_1
    .catch Ljava/lang/Error; {:try_start_0 .. :try_end_0} :catch_0

    return v0

    :catch_0
    move-exception v0

    goto :goto_0

    :catch_1
    move-exception v0

    :goto_0
    new-instance v1, Lcom/samsung/android/spen/libwrapper/utils/PlatformException;

    invoke-direct {v1, v0}, Lcom/samsung/android/spen/libwrapper/utils/PlatformException;-><init>(Ljava/lang/Throwable;)V

    throw v1
.end method

.method public isPauseSupported()Z
    .locals 2

    :try_start_0
    iget-object v0, p0, Lcom/samsung/android/spen/libwrapper/MediaRecorderWrapper;->instance:Lcom/samsung/android/spen/libinterface/MediaRecorderInterface;

    invoke-interface {v0}, Lcom/samsung/android/spen/libinterface/MediaRecorderInterface;->isPauseSupported()Z

    move-result v0
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_1
    .catch Ljava/lang/Error; {:try_start_0 .. :try_end_0} :catch_0

    return v0

    :catch_0
    move-exception v0

    goto :goto_0

    :catch_1
    move-exception v0

    :goto_0
    new-instance v1, Lcom/samsung/android/spen/libwrapper/utils/PlatformException;

    invoke-direct {v1, v0}, Lcom/samsung/android/spen/libwrapper/utils/PlatformException;-><init>(Ljava/lang/Throwable;)V

    throw v1
.end method

.method public isStarting()Z
    .locals 2

    :try_start_0
    iget-object v0, p0, Lcom/samsung/android/spen/libwrapper/MediaRecorderWrapper;->instance:Lcom/samsung/android/spen/libinterface/MediaRecorderInterface;

    invoke-interface {v0}, Lcom/samsung/android/spen/libinterface/MediaRecorderInterface;->isStarting()Z

    move-result v0
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_1
    .catch Ljava/lang/Error; {:try_start_0 .. :try_end_0} :catch_0

    return v0

    :catch_0
    move-exception v0

    goto :goto_0

    :catch_1
    move-exception v0

    :goto_0
    new-instance v1, Lcom/samsung/android/spen/libwrapper/utils/PlatformException;

    invoke-direct {v1, v0}, Lcom/samsung/android/spen/libwrapper/utils/PlatformException;-><init>(Ljava/lang/Throwable;)V

    throw v1
.end method

.method public pause(Lcom/samsung/android/spen/libinterface/MediaRecorderInterface$MediaRecorderListener;)Z
    .locals 1

    :try_start_0
    iget-object v0, p0, Lcom/samsung/android/spen/libwrapper/MediaRecorderWrapper;->instance:Lcom/samsung/android/spen/libinterface/MediaRecorderInterface;

    invoke-interface {v0, p1}, Lcom/samsung/android/spen/libinterface/MediaRecorderInterface;->pause(Lcom/samsung/android/spen/libinterface/MediaRecorderInterface$MediaRecorderListener;)Z

    move-result p1
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_1
    .catch Ljava/lang/Error; {:try_start_0 .. :try_end_0} :catch_0

    return p1

    :catch_0
    move-exception p1

    goto :goto_0

    :catch_1
    move-exception p1

    :goto_0
    new-instance v0, Lcom/samsung/android/spen/libwrapper/utils/PlatformException;

    invoke-direct {v0, p1}, Lcom/samsung/android/spen/libwrapper/utils/PlatformException;-><init>(Ljava/lang/Throwable;)V

    throw v0
.end method

.method public prepare()V
    .locals 2

    :try_start_0
    iget-object v0, p0, Lcom/samsung/android/spen/libwrapper/MediaRecorderWrapper;->instance:Lcom/samsung/android/spen/libinterface/MediaRecorderInterface;

    invoke-interface {v0}, Lcom/samsung/android/spen/libinterface/MediaRecorderInterface;->prepare()V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_1
    .catch Ljava/lang/Error; {:try_start_0 .. :try_end_0} :catch_0

    return-void

    :catch_0
    move-exception v0

    goto :goto_0

    :catch_1
    move-exception v0

    :goto_0
    new-instance v1, Lcom/samsung/android/spen/libwrapper/utils/PlatformException;

    invoke-direct {v1, v0}, Lcom/samsung/android/spen/libwrapper/utils/PlatformException;-><init>(Ljava/lang/Throwable;)V

    throw v1
.end method

.method public prepareRecording(Ljava/lang/String;II)Z
    .locals 1

    :try_start_0
    iget-object v0, p0, Lcom/samsung/android/spen/libwrapper/MediaRecorderWrapper;->instance:Lcom/samsung/android/spen/libinterface/MediaRecorderInterface;

    invoke-interface {v0, p1, p2, p3}, Lcom/samsung/android/spen/libinterface/MediaRecorderInterface;->prepareRecording(Ljava/lang/String;II)Z

    move-result p1
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_1
    .catch Ljava/lang/Error; {:try_start_0 .. :try_end_0} :catch_0

    return p1

    :catch_0
    move-exception p1

    goto :goto_0

    :catch_1
    move-exception p1

    :goto_0
    new-instance p2, Lcom/samsung/android/spen/libwrapper/utils/PlatformException;

    invoke-direct {p2, p1}, Lcom/samsung/android/spen/libwrapper/utils/PlatformException;-><init>(Ljava/lang/Throwable;)V

    throw p2
.end method

.method public release()V
    .locals 2

    :try_start_0
    iget-object v0, p0, Lcom/samsung/android/spen/libwrapper/MediaRecorderWrapper;->instance:Lcom/samsung/android/spen/libinterface/MediaRecorderInterface;

    invoke-interface {v0}, Lcom/samsung/android/spen/libinterface/MediaRecorderInterface;->release()V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_1
    .catch Ljava/lang/Error; {:try_start_0 .. :try_end_0} :catch_0

    return-void

    :catch_0
    move-exception v0

    goto :goto_0

    :catch_1
    move-exception v0

    :goto_0
    new-instance v1, Lcom/samsung/android/spen/libwrapper/utils/PlatformException;

    invoke-direct {v1, v0}, Lcom/samsung/android/spen/libwrapper/utils/PlatformException;-><init>(Ljava/lang/Throwable;)V

    throw v1
.end method

.method public reset()V
    .locals 2

    :try_start_0
    iget-object v0, p0, Lcom/samsung/android/spen/libwrapper/MediaRecorderWrapper;->instance:Lcom/samsung/android/spen/libinterface/MediaRecorderInterface;

    invoke-interface {v0}, Lcom/samsung/android/spen/libinterface/MediaRecorderInterface;->reset()V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_1
    .catch Ljava/lang/Error; {:try_start_0 .. :try_end_0} :catch_0

    return-void

    :catch_0
    move-exception v0

    goto :goto_0

    :catch_1
    move-exception v0

    :goto_0
    new-instance v1, Lcom/samsung/android/spen/libwrapper/utils/PlatformException;

    invoke-direct {v1, v0}, Lcom/samsung/android/spen/libwrapper/utils/PlatformException;-><init>(Ljava/lang/Throwable;)V

    throw v1
.end method

.method public resume(Lcom/samsung/android/spen/libinterface/MediaRecorderInterface$MediaRecorderListener;)Z
    .locals 1

    :try_start_0
    iget-object v0, p0, Lcom/samsung/android/spen/libwrapper/MediaRecorderWrapper;->instance:Lcom/samsung/android/spen/libinterface/MediaRecorderInterface;

    invoke-interface {v0, p1}, Lcom/samsung/android/spen/libinterface/MediaRecorderInterface;->resume(Lcom/samsung/android/spen/libinterface/MediaRecorderInterface$MediaRecorderListener;)Z

    move-result p1
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_1
    .catch Ljava/lang/Error; {:try_start_0 .. :try_end_0} :catch_0

    return p1

    :catch_0
    move-exception p1

    goto :goto_0

    :catch_1
    move-exception p1

    :goto_0
    new-instance v0, Lcom/samsung/android/spen/libwrapper/utils/PlatformException;

    invoke-direct {v0, p1}, Lcom/samsung/android/spen/libwrapper/utils/PlatformException;-><init>(Ljava/lang/Throwable;)V

    throw v0
.end method

.method public setActionListener(Lcom/samsung/android/spen/libinterface/MediaRecorderInterface$ActionListener;)V
    .locals 1

    :try_start_0
    iget-object v0, p0, Lcom/samsung/android/spen/libwrapper/MediaRecorderWrapper;->instance:Lcom/samsung/android/spen/libinterface/MediaRecorderInterface;

    invoke-interface {v0, p1}, Lcom/samsung/android/spen/libinterface/MediaRecorderInterface;->setActionListener(Lcom/samsung/android/spen/libinterface/MediaRecorderInterface$ActionListener;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_1
    .catch Ljava/lang/Error; {:try_start_0 .. :try_end_0} :catch_0

    return-void

    :catch_0
    move-exception p1

    goto :goto_0

    :catch_1
    move-exception p1

    :goto_0
    new-instance v0, Lcom/samsung/android/spen/libwrapper/utils/PlatformException;

    invoke-direct {v0, p1}, Lcom/samsung/android/spen/libwrapper/utils/PlatformException;-><init>(Ljava/lang/Throwable;)V

    throw v0
.end method

.method public setAudioEncoder(I)V
    .locals 1

    :try_start_0
    iget-object v0, p0, Lcom/samsung/android/spen/libwrapper/MediaRecorderWrapper;->instance:Lcom/samsung/android/spen/libinterface/MediaRecorderInterface;

    invoke-interface {v0, p1}, Lcom/samsung/android/spen/libinterface/MediaRecorderInterface;->setAudioEncoder(I)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_1
    .catch Ljava/lang/Error; {:try_start_0 .. :try_end_0} :catch_0

    return-void

    :catch_0
    move-exception p1

    goto :goto_0

    :catch_1
    move-exception p1

    :goto_0
    new-instance v0, Lcom/samsung/android/spen/libwrapper/utils/PlatformException;

    invoke-direct {v0, p1}, Lcom/samsung/android/spen/libwrapper/utils/PlatformException;-><init>(Ljava/lang/Throwable;)V

    throw v0
.end method

.method public setAudioSource(I)V
    .locals 1

    :try_start_0
    iget-object v0, p0, Lcom/samsung/android/spen/libwrapper/MediaRecorderWrapper;->instance:Lcom/samsung/android/spen/libinterface/MediaRecorderInterface;

    invoke-interface {v0, p1}, Lcom/samsung/android/spen/libinterface/MediaRecorderInterface;->setAudioSource(I)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_1
    .catch Ljava/lang/Error; {:try_start_0 .. :try_end_0} :catch_0

    return-void

    :catch_0
    move-exception p1

    goto :goto_0

    :catch_1
    move-exception p1

    :goto_0
    new-instance v0, Lcom/samsung/android/spen/libwrapper/utils/PlatformException;

    invoke-direct {v0, p1}, Lcom/samsung/android/spen/libwrapper/utils/PlatformException;-><init>(Ljava/lang/Throwable;)V

    throw v0
.end method

.method public setOutputFile(Ljava/lang/String;)V
    .locals 1

    :try_start_0
    iget-object v0, p0, Lcom/samsung/android/spen/libwrapper/MediaRecorderWrapper;->instance:Lcom/samsung/android/spen/libinterface/MediaRecorderInterface;

    invoke-interface {v0, p1}, Lcom/samsung/android/spen/libinterface/MediaRecorderInterface;->setOutputFile(Ljava/lang/String;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_1
    .catch Ljava/lang/Error; {:try_start_0 .. :try_end_0} :catch_0

    return-void

    :catch_0
    move-exception p1

    goto :goto_0

    :catch_1
    move-exception p1

    :goto_0
    new-instance v0, Lcom/samsung/android/spen/libwrapper/utils/PlatformException;

    invoke-direct {v0, p1}, Lcom/samsung/android/spen/libwrapper/utils/PlatformException;-><init>(Ljava/lang/Throwable;)V

    throw v0
.end method

.method public setOutputFormat(I)V
    .locals 1

    :try_start_0
    iget-object v0, p0, Lcom/samsung/android/spen/libwrapper/MediaRecorderWrapper;->instance:Lcom/samsung/android/spen/libinterface/MediaRecorderInterface;

    invoke-interface {v0, p1}, Lcom/samsung/android/spen/libinterface/MediaRecorderInterface;->setOutputFormat(I)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_1
    .catch Ljava/lang/Error; {:try_start_0 .. :try_end_0} :catch_0

    return-void

    :catch_0
    move-exception p1

    goto :goto_0

    :catch_1
    move-exception p1

    :goto_0
    new-instance v0, Lcom/samsung/android/spen/libwrapper/utils/PlatformException;

    invoke-direct {v0, p1}, Lcom/samsung/android/spen/libwrapper/utils/PlatformException;-><init>(Ljava/lang/Throwable;)V

    throw v0
.end method

.method public setTimeListener(Lcom/samsung/android/spen/libinterface/MediaRecorderInterface$TimeListener;)V
    .locals 1

    :try_start_0
    iget-object v0, p0, Lcom/samsung/android/spen/libwrapper/MediaRecorderWrapper;->instance:Lcom/samsung/android/spen/libinterface/MediaRecorderInterface;

    invoke-interface {v0, p1}, Lcom/samsung/android/spen/libinterface/MediaRecorderInterface;->setTimeListener(Lcom/samsung/android/spen/libinterface/MediaRecorderInterface$TimeListener;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_1
    .catch Ljava/lang/Error; {:try_start_0 .. :try_end_0} :catch_0

    return-void

    :catch_0
    move-exception p1

    goto :goto_0

    :catch_1
    move-exception p1

    :goto_0
    new-instance v0, Lcom/samsung/android/spen/libwrapper/utils/PlatformException;

    invoke-direct {v0, p1}, Lcom/samsung/android/spen/libwrapper/utils/PlatformException;-><init>(Ljava/lang/Throwable;)V

    throw v0
.end method

.method public start(Ljava/lang/String;Lcom/samsung/android/spen/libinterface/MediaRecorderInterface$MediaRecorderListener;II)Z
    .locals 1

    :try_start_0
    iget-object v0, p0, Lcom/samsung/android/spen/libwrapper/MediaRecorderWrapper;->instance:Lcom/samsung/android/spen/libinterface/MediaRecorderInterface;

    invoke-interface {v0, p1, p2, p3, p4}, Lcom/samsung/android/spen/libinterface/MediaRecorderInterface;->start(Ljava/lang/String;Lcom/samsung/android/spen/libinterface/MediaRecorderInterface$MediaRecorderListener;II)Z

    move-result p1
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_1
    .catch Ljava/lang/Error; {:try_start_0 .. :try_end_0} :catch_0

    return p1

    :catch_0
    move-exception p1

    goto :goto_0

    :catch_1
    move-exception p1

    :goto_0
    new-instance p2, Lcom/samsung/android/spen/libwrapper/utils/PlatformException;

    invoke-direct {p2, p1}, Lcom/samsung/android/spen/libwrapper/utils/PlatformException;-><init>(Ljava/lang/Throwable;)V

    throw p2
.end method

.method public stop(Lcom/samsung/android/spen/libinterface/MediaRecorderInterface$MediaRecorderListener;)Z
    .locals 1

    :try_start_0
    iget-object v0, p0, Lcom/samsung/android/spen/libwrapper/MediaRecorderWrapper;->instance:Lcom/samsung/android/spen/libinterface/MediaRecorderInterface;

    invoke-interface {v0, p1}, Lcom/samsung/android/spen/libinterface/MediaRecorderInterface;->stop(Lcom/samsung/android/spen/libinterface/MediaRecorderInterface$MediaRecorderListener;)Z

    move-result p1
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_1
    .catch Ljava/lang/Error; {:try_start_0 .. :try_end_0} :catch_0

    return p1

    :catch_0
    move-exception p1

    goto :goto_0

    :catch_1
    move-exception p1

    :goto_0
    new-instance v0, Lcom/samsung/android/spen/libwrapper/utils/PlatformException;

    invoke-direct {v0, p1}, Lcom/samsung/android/spen/libwrapper/utils/PlatformException;-><init>(Ljava/lang/Throwable;)V

    throw v0
.end method
