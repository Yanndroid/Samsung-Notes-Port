.class public Lcom/samsung/android/support/notes/bixby/bixby2/action/BixbyExecutor;
.super Ljava/lang/Object;
.source "SourceFile"


# static fields
.field private static final TAG:Ljava/lang/String; = "BixbyExecutor"


# instance fields
.field private mSbixby:Lcom/samsung/android/sdk/bixby2/Sbixby;


# direct methods
.method public constructor <init>(Landroid/app/Application;)V
    .locals 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const-string v0, "BixbyExecutor"

    invoke-static {v0, v0}, Lcom/samsung/android/support/senl/cm/base/framework/support/LoggerBase;->d(Ljava/lang/String;Ljava/lang/String;)V

    invoke-virtual {p1}, Landroid/app/Application;->getApplicationContext()Landroid/content/Context;

    move-result-object p1

    invoke-static {p1}, Lcom/samsung/android/sdk/bixby2/Sbixby;->initialize(Landroid/content/Context;)V

    invoke-static {}, Lcom/samsung/android/sdk/bixby2/Sbixby;->getInstance()Lcom/samsung/android/sdk/bixby2/Sbixby;

    move-result-object p1

    iput-object p1, p0, Lcom/samsung/android/support/notes/bixby/bixby2/action/BixbyExecutor;->mSbixby:Lcom/samsung/android/sdk/bixby2/Sbixby;

    return-void
.end method


# virtual methods
.method public addActionHandler()V
    .locals 3

    const-string v0, "BixbyExecutor"

    const-string v1, "addActionHandler"

    invoke-static {v0, v1}, Lcom/samsung/android/support/senl/cm/base/framework/support/LoggerBase;->d(Ljava/lang/String;Ljava/lang/String;)V

    iget-object v0, p0, Lcom/samsung/android/support/notes/bixby/bixby2/action/BixbyExecutor;->mSbixby:Lcom/samsung/android/sdk/bixby2/Sbixby;

    new-instance v1, Lcom/samsung/android/support/notes/bixby/bixby2/action/BixbyActionHandler;

    invoke-direct {v1}, Lcom/samsung/android/support/notes/bixby/bixby2/action/BixbyActionHandler;-><init>()V

    const-string/jumbo v2, "viv.samsungNotesApp.SearchNote"

    invoke-virtual {v0, v2, v1}, Lcom/samsung/android/sdk/bixby2/Sbixby;->addActionHandler(Ljava/lang/String;Lcom/samsung/android/sdk/bixby2/action/ActionHandler;)V

    iget-object v0, p0, Lcom/samsung/android/support/notes/bixby/bixby2/action/BixbyExecutor;->mSbixby:Lcom/samsung/android/sdk/bixby2/Sbixby;

    new-instance v1, Lcom/samsung/android/support/notes/bixby/bixby2/action/BixbyActionHandler;

    invoke-direct {v1}, Lcom/samsung/android/support/notes/bixby/bixby2/action/BixbyActionHandler;-><init>()V

    const-string/jumbo v2, "viv.samsungNotesApp.DeleteNote"

    invoke-virtual {v0, v2, v1}, Lcom/samsung/android/sdk/bixby2/Sbixby;->addActionHandler(Ljava/lang/String;Lcom/samsung/android/sdk/bixby2/action/ActionHandler;)V

    iget-object v0, p0, Lcom/samsung/android/support/notes/bixby/bixby2/action/BixbyExecutor;->mSbixby:Lcom/samsung/android/sdk/bixby2/Sbixby;

    new-instance v1, Lcom/samsung/android/support/notes/bixby/bixby2/action/BixbyActionHandler;

    invoke-direct {v1}, Lcom/samsung/android/support/notes/bixby/bixby2/action/BixbyActionHandler;-><init>()V

    const-string/jumbo v2, "viv.samsungNotesApp.Save"

    invoke-virtual {v0, v2, v1}, Lcom/samsung/android/sdk/bixby2/Sbixby;->addActionHandler(Ljava/lang/String;Lcom/samsung/android/sdk/bixby2/action/ActionHandler;)V

    iget-object v0, p0, Lcom/samsung/android/support/notes/bixby/bixby2/action/BixbyExecutor;->mSbixby:Lcom/samsung/android/sdk/bixby2/Sbixby;

    new-instance v1, Lcom/samsung/android/support/notes/bixby/bixby2/action/BixbyActionHandler;

    invoke-direct {v1}, Lcom/samsung/android/support/notes/bixby/bixby2/action/BixbyActionHandler;-><init>()V

    const-string/jumbo v2, "viv.samsungNotesApp.GetAppState"

    invoke-virtual {v0, v2, v1}, Lcom/samsung/android/sdk/bixby2/Sbixby;->addActionHandler(Ljava/lang/String;Lcom/samsung/android/sdk/bixby2/action/ActionHandler;)V

    iget-object v0, p0, Lcom/samsung/android/support/notes/bixby/bixby2/action/BixbyExecutor;->mSbixby:Lcom/samsung/android/sdk/bixby2/Sbixby;

    new-instance v1, Lcom/samsung/android/support/notes/bixby/bixby2/action/BixbyActionHandler;

    invoke-direct {v1}, Lcom/samsung/android/support/notes/bixby/bixby2/action/BixbyActionHandler;-><init>()V

    const-string/jumbo v2, "viv.samsungNotesApp.IsNoteEmpty"

    invoke-virtual {v0, v2, v1}, Lcom/samsung/android/sdk/bixby2/Sbixby;->addActionHandler(Ljava/lang/String;Lcom/samsung/android/sdk/bixby2/action/ActionHandler;)V

    iget-object v0, p0, Lcom/samsung/android/support/notes/bixby/bixby2/action/BixbyExecutor;->mSbixby:Lcom/samsung/android/sdk/bixby2/Sbixby;

    new-instance v1, Lcom/samsung/android/support/notes/bixby/bixby2/action/BixbyActionHandler;

    invoke-direct {v1}, Lcom/samsung/android/support/notes/bixby/bixby2/action/BixbyActionHandler;-><init>()V

    const-string/jumbo v2, "viv.samsungNotesApp.ShowRecentNotes"

    invoke-virtual {v0, v2, v1}, Lcom/samsung/android/sdk/bixby2/Sbixby;->addActionHandler(Ljava/lang/String;Lcom/samsung/android/sdk/bixby2/action/ActionHandler;)V

    return-void
.end method
