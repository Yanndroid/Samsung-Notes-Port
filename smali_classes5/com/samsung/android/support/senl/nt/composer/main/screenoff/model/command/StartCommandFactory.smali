.class public Lcom/samsung/android/support/senl/nt/composer/main/screenoff/model/command/StartCommandFactory;
.super Ljava/lang/Object;
.source "SourceFile"


# static fields
.field private static final TAG:Ljava/lang/String;

.field private static mInstance:Lcom/samsung/android/support/senl/nt/composer/main/screenoff/model/command/StartCommandFactory;


# instance fields
.field private mPrimitiveStartCommand:Lcom/samsung/android/support/senl/nt/composer/main/screenoff/model/command/start/IStartCommand;

.field private mStartCommand:Lcom/samsung/android/support/senl/nt/composer/main/screenoff/model/command/start/IStartCommand;


# direct methods
.method public static constructor <clinit>()V
    .locals 1

    const-string v0, "StartCommandFactory"

    invoke-static {v0}, Lcom/samsung/android/support/senl/nt/composer/main/screenoff/util/SOLogger;->createTag(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/samsung/android/support/senl/nt/composer/main/screenoff/model/command/StartCommandFactory;->TAG:Ljava/lang/String;

    const/4 v0, 0x0

    sput-object v0, Lcom/samsung/android/support/senl/nt/composer/main/screenoff/model/command/StartCommandFactory;->mInstance:Lcom/samsung/android/support/senl/nt/composer/main/screenoff/model/command/StartCommandFactory;

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static bridge synthetic a(Lcom/samsung/android/support/senl/nt/composer/main/screenoff/model/command/StartCommandFactory;Ljava/lang/String;)V
    .locals 0

    invoke-direct {p0, p1}, Lcom/samsung/android/support/senl/nt/composer/main/screenoff/model/command/StartCommandFactory;->setPrimitiveStartCommandUri(Ljava/lang/String;)V

    return-void
.end method

.method public static declared-synchronized getInstance()Lcom/samsung/android/support/senl/nt/composer/main/screenoff/model/command/StartCommandFactory;
    .locals 2

    const-class v0, Lcom/samsung/android/support/senl/nt/composer/main/screenoff/model/command/StartCommandFactory;

    monitor-enter v0

    :try_start_0
    sget-object v1, Lcom/samsung/android/support/senl/nt/composer/main/screenoff/model/command/StartCommandFactory;->mInstance:Lcom/samsung/android/support/senl/nt/composer/main/screenoff/model/command/StartCommandFactory;

    if-nez v1, :cond_0

    new-instance v1, Lcom/samsung/android/support/senl/nt/composer/main/screenoff/model/command/StartCommandFactory;

    invoke-direct {v1}, Lcom/samsung/android/support/senl/nt/composer/main/screenoff/model/command/StartCommandFactory;-><init>()V

    sput-object v1, Lcom/samsung/android/support/senl/nt/composer/main/screenoff/model/command/StartCommandFactory;->mInstance:Lcom/samsung/android/support/senl/nt/composer/main/screenoff/model/command/StartCommandFactory;

    :cond_0
    sget-object v1, Lcom/samsung/android/support/senl/nt/composer/main/screenoff/model/command/StartCommandFactory;->mInstance:Lcom/samsung/android/support/senl/nt/composer/main/screenoff/model/command/StartCommandFactory;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit v0

    return-object v1

    :catchall_0
    move-exception v1

    monitor-exit v0

    throw v1
.end method

.method private setPrimitiveStartCommandUri(Ljava/lang/String;)V
    .locals 3

    sget-object v0, Lcom/samsung/android/support/senl/nt/composer/main/screenoff/model/command/StartCommandFactory;->TAG:Ljava/lang/String;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "setPrimitiveStartCommandUri# uri "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-static {p1}, Lcom/samsung/android/support/senl/cm/base/framework/support/LoggerBase;->getEncode(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/samsung/android/support/senl/cm/base/framework/support/LoggerBase;->d(Ljava/lang/String;Ljava/lang/String;)V

    iget-object v0, p0, Lcom/samsung/android/support/senl/nt/composer/main/screenoff/model/command/StartCommandFactory;->mPrimitiveStartCommand:Lcom/samsung/android/support/senl/nt/composer/main/screenoff/model/command/start/IStartCommand;

    if-eqz v0, :cond_0

    invoke-interface {v0, p1}, Lcom/samsung/android/support/senl/nt/composer/main/screenoff/model/command/start/IStartCommand;->setUri(Ljava/lang/String;)V

    :cond_0
    return-void
.end method


# virtual methods
.method public convertStartCommand(Landroid/content/Intent;Ljava/lang/String;Ljava/lang/String;)Lcom/samsung/android/support/senl/nt/composer/main/screenoff/model/command/start/IStartCommand;
    .locals 3

    sget-object v0, Lcom/samsung/android/support/senl/nt/composer/main/screenoff/model/command/StartCommandFactory;->TAG:Ljava/lang/String;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "convertStartCommand# extraKey/extraValue"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v2, "/"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/samsung/android/support/senl/cm/base/framework/support/LoggerBase;->d(Ljava/lang/String;Ljava/lang/String;)V

    const/4 v0, 0x0

    iput-object v0, p0, Lcom/samsung/android/support/senl/nt/composer/main/screenoff/model/command/StartCommandFactory;->mPrimitiveStartCommand:Lcom/samsung/android/support/senl/nt/composer/main/screenoff/model/command/start/IStartCommand;

    invoke-virtual {p1, p2, p3}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    invoke-virtual {p0, p1}, Lcom/samsung/android/support/senl/nt/composer/main/screenoff/model/command/StartCommandFactory;->makeStartCommand(Landroid/content/Intent;)Lcom/samsung/android/support/senl/nt/composer/main/screenoff/model/command/start/IStartCommand;

    move-result-object p1

    return-object p1
.end method

.method public getPrimitiveStartCommand()Lcom/samsung/android/support/senl/nt/composer/main/screenoff/model/command/start/IStartCommand;
    .locals 1

    iget-object v0, p0, Lcom/samsung/android/support/senl/nt/composer/main/screenoff/model/command/StartCommandFactory;->mPrimitiveStartCommand:Lcom/samsung/android/support/senl/nt/composer/main/screenoff/model/command/start/IStartCommand;

    if-nez v0, :cond_0

    new-instance v0, Lcom/samsung/android/support/senl/nt/composer/main/screenoff/model/command/start/StartNone;

    invoke-direct {v0}, Lcom/samsung/android/support/senl/nt/composer/main/screenoff/model/command/start/StartNone;-><init>()V

    :cond_0
    return-object v0
.end method

.method public getPrimitiveStartCommandUri()Ljava/lang/String;
    .locals 4

    iget-object v0, p0, Lcom/samsung/android/support/senl/nt/composer/main/screenoff/model/command/StartCommandFactory;->mPrimitiveStartCommand:Lcom/samsung/android/support/senl/nt/composer/main/screenoff/model/command/start/IStartCommand;

    if-eqz v0, :cond_0

    invoke-interface {v0}, Lcom/samsung/android/support/senl/nt/composer/main/screenoff/model/command/start/IStartCommand;->getUri()Ljava/lang/String;

    move-result-object v0

    goto :goto_0

    :cond_0
    const-string v0, ""

    :goto_0
    sget-object v1, Lcom/samsung/android/support/senl/nt/composer/main/screenoff/model/command/StartCommandFactory;->TAG:Ljava/lang/String;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "getPrimitiveStartCommandUri# uri "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-static {v0}, Lcom/samsung/android/support/senl/cm/base/framework/support/LoggerBase;->getEncode(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Lcom/samsung/android/support/senl/cm/base/framework/support/LoggerBase;->d(Ljava/lang/String;Ljava/lang/String;)V

    return-object v0
.end method

.method public getStartCommand()Lcom/samsung/android/support/senl/nt/composer/main/screenoff/model/command/start/IStartCommand;
    .locals 1

    iget-object v0, p0, Lcom/samsung/android/support/senl/nt/composer/main/screenoff/model/command/StartCommandFactory;->mStartCommand:Lcom/samsung/android/support/senl/nt/composer/main/screenoff/model/command/start/IStartCommand;

    return-object v0
.end method

.method public makeStartCommand(Landroid/content/Intent;)Lcom/samsung/android/support/senl/nt/composer/main/screenoff/model/command/start/IStartCommand;
    .locals 4

    const/4 v0, 0x0

    iput-object v0, p0, Lcom/samsung/android/support/senl/nt/composer/main/screenoff/model/command/StartCommandFactory;->mStartCommand:Lcom/samsung/android/support/senl/nt/composer/main/screenoff/model/command/start/IStartCommand;

    const-string v0, "control_service"

    const/4 v1, 0x0

    invoke-virtual {p1, v0, v1}, Landroid/content/Intent;->getBooleanExtra(Ljava/lang/String;Z)Z

    move-result v0

    if-eqz v0, :cond_0

    new-instance v0, Lcom/samsung/android/support/senl/nt/composer/main/screenoff/model/command/start/ControlService;

    invoke-direct {v0}, Lcom/samsung/android/support/senl/nt/composer/main/screenoff/model/command/start/ControlService;-><init>()V

    iput-object v0, p0, Lcom/samsung/android/support/senl/nt/composer/main/screenoff/model/command/StartCommandFactory;->mStartCommand:Lcom/samsung/android/support/senl/nt/composer/main/screenoff/model/command/start/IStartCommand;

    :cond_0
    const-string v0, "pre_initialized"

    invoke-virtual {p1, v0, v1}, Landroid/content/Intent;->getBooleanExtra(Ljava/lang/String;Z)Z

    move-result v0

    if-eqz v0, :cond_1

    new-instance v0, Lcom/samsung/android/support/senl/nt/composer/main/screenoff/model/command/start/PreInitialize;

    invoke-direct {v0}, Lcom/samsung/android/support/senl/nt/composer/main/screenoff/model/command/start/PreInitialize;-><init>()V

    iput-object v0, p0, Lcom/samsung/android/support/senl/nt/composer/main/screenoff/model/command/StartCommandFactory;->mStartCommand:Lcom/samsung/android/support/senl/nt/composer/main/screenoff/model/command/start/IStartCommand;

    :cond_1
    const-string v0, "pen_intent_com"

    invoke-virtual {p1, v0}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    if-eqz v0, :cond_5

    invoke-virtual {v0}, Ljava/lang/String;->hashCode()I

    const/4 v2, -0x1

    invoke-virtual {v0}, Ljava/lang/String;->hashCode()I

    move-result v3

    sparse-switch v3, :sswitch_data_0

    :goto_0
    move v1, v2

    goto :goto_1

    :sswitch_0
    const-string v1, "pen_detach"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_2

    goto :goto_0

    :cond_2
    const/4 v1, 0x2

    goto :goto_1

    :sswitch_1
    const-string v1, "pen_attach"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_3

    goto :goto_0

    :cond_3
    const/4 v1, 0x1

    goto :goto_1

    :sswitch_2
    const-string v3, "pen_doubletab"

    invoke-virtual {v0, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_4

    goto :goto_0

    :cond_4
    :goto_1
    packed-switch v1, :pswitch_data_0

    new-instance v0, Lcom/samsung/android/support/senl/nt/composer/main/screenoff/model/command/start/StartNone;

    invoke-direct {v0}, Lcom/samsung/android/support/senl/nt/composer/main/screenoff/model/command/start/StartNone;-><init>()V

    goto :goto_2

    :pswitch_0
    new-instance v0, Lcom/samsung/android/support/senl/nt/composer/main/screenoff/model/command/start/PenDetach;

    invoke-direct {v0}, Lcom/samsung/android/support/senl/nt/composer/main/screenoff/model/command/start/PenDetach;-><init>()V

    :goto_2
    iput-object v0, p0, Lcom/samsung/android/support/senl/nt/composer/main/screenoff/model/command/StartCommandFactory;->mStartCommand:Lcom/samsung/android/support/senl/nt/composer/main/screenoff/model/command/start/IStartCommand;

    goto :goto_3

    :pswitch_1
    new-instance v0, Lcom/samsung/android/support/senl/nt/composer/main/screenoff/model/command/start/PenAttach;

    invoke-direct {v0}, Lcom/samsung/android/support/senl/nt/composer/main/screenoff/model/command/start/PenAttach;-><init>()V

    goto :goto_2

    :pswitch_2
    new-instance v0, Lcom/samsung/android/support/senl/nt/composer/main/screenoff/model/command/start/PenButtonHoverTap;

    invoke-direct {v0}, Lcom/samsung/android/support/senl/nt/composer/main/screenoff/model/command/start/PenButtonHoverTap;-><init>()V

    goto :goto_2

    :cond_5
    :goto_3
    const-string v0, "pin_com_load"

    invoke-virtual {p1, v0}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    if-eqz v0, :cond_6

    new-instance v1, Lcom/samsung/android/support/senl/nt/composer/main/screenoff/model/command/start/LoadNoteByDoubleTapOnAOD;

    invoke-direct {v1}, Lcom/samsung/android/support/senl/nt/composer/main/screenoff/model/command/start/LoadNoteByDoubleTapOnAOD;-><init>()V

    iput-object v1, p0, Lcom/samsung/android/support/senl/nt/composer/main/screenoff/model/command/StartCommandFactory;->mStartCommand:Lcom/samsung/android/support/senl/nt/composer/main/screenoff/model/command/start/IStartCommand;

    invoke-interface {v1, v0}, Lcom/samsung/android/support/senl/nt/composer/main/screenoff/model/command/start/IStartCommand;->setUri(Ljava/lang/String;)V

    iget-object v0, p0, Lcom/samsung/android/support/senl/nt/composer/main/screenoff/model/command/StartCommandFactory;->mStartCommand:Lcom/samsung/android/support/senl/nt/composer/main/screenoff/model/command/start/IStartCommand;

    check-cast v0, Lcom/samsung/android/support/senl/nt/composer/main/screenoff/model/command/start/LoadNoteByDoubleTapOnAOD;

    new-instance v1, Lcom/samsung/android/support/senl/nt/composer/main/screenoff/model/command/StartCommandFactory$1;

    invoke-direct {v1, p0}, Lcom/samsung/android/support/senl/nt/composer/main/screenoff/model/command/StartCommandFactory$1;-><init>(Lcom/samsung/android/support/senl/nt/composer/main/screenoff/model/command/StartCommandFactory;)V

    invoke-virtual {v0, v1}, Lcom/samsung/android/support/senl/nt/composer/main/screenoff/model/command/start/LoadNoteByDoubleTapOnAOD;->setCommandFactory(Lcom/samsung/android/support/senl/nt/composer/main/screenoff/model/command/start/LoadNoteByDoubleTapOnAOD$ICommandFactory;)V

    :cond_6
    const-string v0, "pin_com_delete"

    invoke-virtual {p1, v0}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    if-eqz p1, :cond_7

    new-instance v0, Lcom/samsung/android/support/senl/nt/composer/main/screenoff/model/command/start/DeleteNoteByRemovePinOnAOD;

    invoke-direct {v0}, Lcom/samsung/android/support/senl/nt/composer/main/screenoff/model/command/start/DeleteNoteByRemovePinOnAOD;-><init>()V

    iput-object v0, p0, Lcom/samsung/android/support/senl/nt/composer/main/screenoff/model/command/StartCommandFactory;->mStartCommand:Lcom/samsung/android/support/senl/nt/composer/main/screenoff/model/command/start/IStartCommand;

    invoke-interface {v0, p1}, Lcom/samsung/android/support/senl/nt/composer/main/screenoff/model/command/start/IStartCommand;->setUri(Ljava/lang/String;)V

    :cond_7
    iget-object p1, p0, Lcom/samsung/android/support/senl/nt/composer/main/screenoff/model/command/StartCommandFactory;->mStartCommand:Lcom/samsung/android/support/senl/nt/composer/main/screenoff/model/command/start/IStartCommand;

    if-nez p1, :cond_8

    new-instance p1, Lcom/samsung/android/support/senl/nt/composer/main/screenoff/model/command/start/StartNone;

    invoke-direct {p1}, Lcom/samsung/android/support/senl/nt/composer/main/screenoff/model/command/start/StartNone;-><init>()V

    iput-object p1, p0, Lcom/samsung/android/support/senl/nt/composer/main/screenoff/model/command/StartCommandFactory;->mStartCommand:Lcom/samsung/android/support/senl/nt/composer/main/screenoff/model/command/start/IStartCommand;

    :cond_8
    sget-object p1, Lcom/samsung/android/support/senl/nt/composer/main/screenoff/model/command/StartCommandFactory;->TAG:Ljava/lang/String;

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "makeStartCommand# startCommand "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcom/samsung/android/support/senl/nt/composer/main/screenoff/model/command/StartCommandFactory;->mStartCommand:Lcom/samsung/android/support/senl/nt/composer/main/screenoff/model/command/start/IStartCommand;

    invoke-virtual {v1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {p1, v0}, Lcom/samsung/android/support/senl/cm/base/framework/support/LoggerBase;->d(Ljava/lang/String;Ljava/lang/String;)V

    iget-object v0, p0, Lcom/samsung/android/support/senl/nt/composer/main/screenoff/model/command/StartCommandFactory;->mPrimitiveStartCommand:Lcom/samsung/android/support/senl/nt/composer/main/screenoff/model/command/start/IStartCommand;

    if-nez v0, :cond_9

    iget-object v0, p0, Lcom/samsung/android/support/senl/nt/composer/main/screenoff/model/command/StartCommandFactory;->mStartCommand:Lcom/samsung/android/support/senl/nt/composer/main/screenoff/model/command/start/IStartCommand;

    instance-of v1, v0, Lcom/samsung/android/support/senl/nt/composer/main/screenoff/model/command/start/PreInitialize;

    if-nez v1, :cond_9

    instance-of v1, v0, Lcom/samsung/android/support/senl/nt/composer/main/screenoff/model/command/start/PenAttach;

    if-nez v1, :cond_9

    instance-of v1, v0, Lcom/samsung/android/support/senl/nt/composer/main/screenoff/model/command/start/ControlService;

    if-nez v1, :cond_9

    iput-object v0, p0, Lcom/samsung/android/support/senl/nt/composer/main/screenoff/model/command/StartCommandFactory;->mPrimitiveStartCommand:Lcom/samsung/android/support/senl/nt/composer/main/screenoff/model/command/start/IStartCommand;

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "makeStartCommand# primitiveStartCommand "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcom/samsung/android/support/senl/nt/composer/main/screenoff/model/command/StartCommandFactory;->mPrimitiveStartCommand:Lcom/samsung/android/support/senl/nt/composer/main/screenoff/model/command/start/IStartCommand;

    invoke-virtual {v1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {p1, v0}, Lcom/samsung/android/support/senl/cm/base/framework/support/LoggerBase;->d(Ljava/lang/String;Ljava/lang/String;)V

    :cond_9
    iget-object p1, p0, Lcom/samsung/android/support/senl/nt/composer/main/screenoff/model/command/StartCommandFactory;->mStartCommand:Lcom/samsung/android/support/senl/nt/composer/main/screenoff/model/command/start/IStartCommand;

    return-object p1

    nop

    :sswitch_data_0
    .sparse-switch
        -0x2c1db982 -> :sswitch_2
        0x4f717c2b -> :sswitch_1
        0x53bca579 -> :sswitch_0
    .end sparse-switch

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_2
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method

.method public release()V
    .locals 2

    sget-object v0, Lcom/samsung/android/support/senl/nt/composer/main/screenoff/model/command/StartCommandFactory;->TAG:Ljava/lang/String;

    const-string v1, "release#"

    invoke-static {v0, v1}, Lcom/samsung/android/support/senl/cm/base/framework/support/LoggerBase;->d(Ljava/lang/String;Ljava/lang/String;)V

    const/4 v0, 0x0

    iput-object v0, p0, Lcom/samsung/android/support/senl/nt/composer/main/screenoff/model/command/StartCommandFactory;->mStartCommand:Lcom/samsung/android/support/senl/nt/composer/main/screenoff/model/command/start/IStartCommand;

    iput-object v0, p0, Lcom/samsung/android/support/senl/nt/composer/main/screenoff/model/command/StartCommandFactory;->mPrimitiveStartCommand:Lcom/samsung/android/support/senl/nt/composer/main/screenoff/model/command/start/IStartCommand;

    return-void
.end method

.method public setPrimitiveStartCommand(Lcom/samsung/android/support/senl/nt/composer/main/screenoff/model/command/start/IStartCommand;)V
    .locals 0

    iput-object p1, p0, Lcom/samsung/android/support/senl/nt/composer/main/screenoff/model/command/StartCommandFactory;->mPrimitiveStartCommand:Lcom/samsung/android/support/senl/nt/composer/main/screenoff/model/command/start/IStartCommand;

    return-void
.end method
