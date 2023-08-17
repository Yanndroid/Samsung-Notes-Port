.class public Lorg/apache/poi/java/awt/FileDialog;
.super Lorg/apache/poi/java/awt/Dialog;
.source "SourceFile"


# static fields
.field public static final LOAD:I = 0x0

.field public static final SAVE:I = 0x1

.field private static final base:Ljava/lang/String; = "filedlg"

.field private static nameCounter:I = 0x0

.field private static final serialVersionUID:J = 0x45e06e8260ef3f56L


# instance fields
.field public dir:Ljava/lang/String;

.field public file:Ljava/lang/String;

.field private files:[Ljava/io/File;

.field public filter:Ljava/io/FilenameFilter;

.field public mode:I

.field private multipleMode:Z


# direct methods
.method public static constructor <clinit>()V
    .locals 1

    invoke-static {}, Lorg/apache/poi/java/awt/Toolkit;->loadLibraries()V

    invoke-static {}, Lorg/apache/poi/java/awt/GraphicsEnvironment;->isHeadless()Z

    move-result v0

    if-nez v0, :cond_0

    invoke-static {}, Lorg/apache/poi/java/awt/FileDialog;->initIDs()V

    :cond_0
    new-instance v0, Lorg/apache/poi/java/awt/FileDialog$1;

    invoke-direct {v0}, Lorg/apache/poi/java/awt/FileDialog$1;-><init>()V

    invoke-static {v0}, Lorg/apache/poi/sun/awt/AWTAccessor;->setFileDialogAccessor(Lorg/apache/poi/sun/awt/AWTAccessor$FileDialogAccessor;)V

    return-void
.end method

.method public constructor <init>(Lorg/apache/poi/java/awt/Dialog;)V
    .locals 2

    const-string v0, ""

    const/4 v1, 0x0

    invoke-direct {p0, p1, v0, v1}, Lorg/apache/poi/java/awt/FileDialog;-><init>(Lorg/apache/poi/java/awt/Dialog;Ljava/lang/String;I)V

    return-void
.end method

.method public constructor <init>(Lorg/apache/poi/java/awt/Dialog;Ljava/lang/String;)V
    .locals 1

    const/4 v0, 0x0

    invoke-direct {p0, p1, p2, v0}, Lorg/apache/poi/java/awt/FileDialog;-><init>(Lorg/apache/poi/java/awt/Dialog;Ljava/lang/String;I)V

    return-void
.end method

.method public constructor <init>(Lorg/apache/poi/java/awt/Dialog;Ljava/lang/String;I)V
    .locals 1

    const/4 v0, 0x1

    invoke-direct {p0, p1, p2, v0}, Lorg/apache/poi/java/awt/Dialog;-><init>(Lorg/apache/poi/java/awt/Dialog;Ljava/lang/String;Z)V

    const/4 p1, 0x0

    iput-boolean p1, p0, Lorg/apache/poi/java/awt/FileDialog;->multipleMode:Z

    invoke-virtual {p0, p3}, Lorg/apache/poi/java/awt/FileDialog;->setMode(I)V

    const/4 p1, 0x0

    invoke-virtual {p0, p1}, Lorg/apache/poi/java/awt/Container;->setLayout(Lorg/apache/poi/java/awt/LayoutManager;)V

    return-void
.end method

.method public constructor <init>(Lorg/apache/poi/java/awt/Frame;)V
    .locals 2

    const-string v0, ""

    const/4 v1, 0x0

    invoke-direct {p0, p1, v0, v1}, Lorg/apache/poi/java/awt/FileDialog;-><init>(Lorg/apache/poi/java/awt/Frame;Ljava/lang/String;I)V

    return-void
.end method

.method public constructor <init>(Lorg/apache/poi/java/awt/Frame;Ljava/lang/String;)V
    .locals 1

    const/4 v0, 0x0

    invoke-direct {p0, p1, p2, v0}, Lorg/apache/poi/java/awt/FileDialog;-><init>(Lorg/apache/poi/java/awt/Frame;Ljava/lang/String;I)V

    return-void
.end method

.method public constructor <init>(Lorg/apache/poi/java/awt/Frame;Ljava/lang/String;I)V
    .locals 1

    const/4 v0, 0x1

    invoke-direct {p0, p1, p2, v0}, Lorg/apache/poi/java/awt/Dialog;-><init>(Lorg/apache/poi/java/awt/Frame;Ljava/lang/String;Z)V

    const/4 p1, 0x0

    iput-boolean p1, p0, Lorg/apache/poi/java/awt/FileDialog;->multipleMode:Z

    invoke-virtual {p0, p3}, Lorg/apache/poi/java/awt/FileDialog;->setMode(I)V

    const/4 p1, 0x0

    invoke-virtual {p0, p1}, Lorg/apache/poi/java/awt/Container;->setLayout(Lorg/apache/poi/java/awt/LayoutManager;)V

    return-void
.end method

.method public static synthetic access$000(Lorg/apache/poi/java/awt/FileDialog;[Ljava/io/File;)V
    .locals 0

    invoke-direct {p0, p1}, Lorg/apache/poi/java/awt/FileDialog;->setFiles([Ljava/io/File;)V

    return-void
.end method

.method public static synthetic access$100(Lorg/apache/poi/java/awt/FileDialog;)Z
    .locals 0

    iget-boolean p0, p0, Lorg/apache/poi/java/awt/FileDialog;->multipleMode:Z

    return p0
.end method

.method private static native initIDs()V
.end method

.method private readObject(Ljava/io/ObjectInputStream;)V
    .locals 2

    invoke-virtual {p1}, Ljava/io/ObjectInputStream;->defaultReadObject()V

    iget-object p1, p0, Lorg/apache/poi/java/awt/FileDialog;->dir:Ljava/lang/String;

    const/4 v0, 0x0

    const-string v1, ""

    if-eqz p1, :cond_0

    invoke-virtual {p1, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_0

    iput-object v0, p0, Lorg/apache/poi/java/awt/FileDialog;->dir:Ljava/lang/String;

    :cond_0
    iget-object p1, p0, Lorg/apache/poi/java/awt/FileDialog;->file:Ljava/lang/String;

    if-eqz p1, :cond_1

    invoke-virtual {p1, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_1

    iput-object v0, p0, Lorg/apache/poi/java/awt/FileDialog;->file:Ljava/lang/String;

    :cond_1
    return-void
.end method

.method private setFiles([Ljava/io/File;)V
    .locals 1

    invoke-virtual {p0}, Lorg/apache/poi/java/awt/Component;->getObjectLock()Ljava/lang/Object;

    move-result-object v0

    monitor-enter v0

    :try_start_0
    iput-object p1, p0, Lorg/apache/poi/java/awt/FileDialog;->files:[Ljava/io/File;

    monitor-exit v0

    return-void

    :catchall_0
    move-exception p1

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw p1
.end method


# virtual methods
.method public addNotify()V
    .locals 2

    invoke-virtual {p0}, Lorg/apache/poi/java/awt/Component;->getTreeLock()Ljava/lang/Object;

    move-result-object v0

    monitor-enter v0

    :try_start_0
    iget-object v1, p0, Lorg/apache/poi/java/awt/Component;->parent:Lorg/apache/poi/java/awt/Container;

    if-eqz v1, :cond_0

    invoke-virtual {v1}, Lorg/apache/poi/java/awt/Component;->getPeer()Lorg/apache/poi/java/awt/peer/ComponentPeer;

    move-result-object v1

    if-nez v1, :cond_0

    iget-object v1, p0, Lorg/apache/poi/java/awt/Component;->parent:Lorg/apache/poi/java/awt/Container;

    invoke-virtual {v1}, Lorg/apache/poi/java/awt/Container;->addNotify()V

    :cond_0
    iget-object v1, p0, Lorg/apache/poi/java/awt/Component;->peer:Lorg/apache/poi/java/awt/peer/ComponentPeer;

    if-nez v1, :cond_1

    invoke-virtual {p0}, Lorg/apache/poi/java/awt/Window;->getToolkit()Lorg/apache/poi/java/awt/Toolkit;

    move-result-object v1

    invoke-virtual {v1, p0}, Lorg/apache/poi/java/awt/Toolkit;->createFileDialog(Lorg/apache/poi/java/awt/FileDialog;)Lorg/apache/poi/java/awt/peer/FileDialogPeer;

    move-result-object v1

    iput-object v1, p0, Lorg/apache/poi/java/awt/Component;->peer:Lorg/apache/poi/java/awt/peer/ComponentPeer;

    :cond_1
    invoke-super {p0}, Lorg/apache/poi/java/awt/Dialog;->addNotify()V

    monitor-exit v0

    return-void

    :catchall_0
    move-exception v1

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v1
.end method

.method public constructComponentName()Ljava/lang/String;
    .locals 4

    const-class v0, Lorg/apache/poi/java/awt/FileDialog;

    monitor-enter v0

    :try_start_0
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "filedlg"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    sget v2, Lorg/apache/poi/java/awt/FileDialog;->nameCounter:I

    add-int/lit8 v3, v2, 0x1

    sput v3, Lorg/apache/poi/java/awt/FileDialog;->nameCounter:I

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    monitor-exit v0

    return-object v1

    :catchall_0
    move-exception v1

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v1
.end method

.method public getDirectory()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lorg/apache/poi/java/awt/FileDialog;->dir:Ljava/lang/String;

    return-object v0
.end method

.method public getFile()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lorg/apache/poi/java/awt/FileDialog;->file:Ljava/lang/String;

    return-object v0
.end method

.method public getFilenameFilter()Ljava/io/FilenameFilter;
    .locals 1

    iget-object v0, p0, Lorg/apache/poi/java/awt/FileDialog;->filter:Ljava/io/FilenameFilter;

    return-object v0
.end method

.method public getFiles()[Ljava/io/File;
    .locals 2

    invoke-virtual {p0}, Lorg/apache/poi/java/awt/Component;->getObjectLock()Ljava/lang/Object;

    move-result-object v0

    monitor-enter v0

    :try_start_0
    iget-object v1, p0, Lorg/apache/poi/java/awt/FileDialog;->files:[Ljava/io/File;

    if-eqz v1, :cond_0

    invoke-virtual {v1}, [Ljava/io/File;->clone()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, [Ljava/io/File;

    monitor-exit v0

    return-object v1

    :cond_0
    const/4 v1, 0x0

    new-array v1, v1, [Ljava/io/File;

    monitor-exit v0

    return-object v1

    :catchall_0
    move-exception v1

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v1
.end method

.method public getMode()I
    .locals 1

    iget v0, p0, Lorg/apache/poi/java/awt/FileDialog;->mode:I

    return v0
.end method

.method public isMultipleMode()Z
    .locals 2

    invoke-virtual {p0}, Lorg/apache/poi/java/awt/Component;->getObjectLock()Ljava/lang/Object;

    move-result-object v0

    monitor-enter v0

    :try_start_0
    iget-boolean v1, p0, Lorg/apache/poi/java/awt/FileDialog;->multipleMode:Z

    monitor-exit v0

    return v1

    :catchall_0
    move-exception v1

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v1
.end method

.method public paramString()Ljava/lang/String;
    .locals 2

    invoke-super {p0}, Lorg/apache/poi/java/awt/Dialog;->paramString()Ljava/lang/String;

    move-result-object v0

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v0, ",dir= "

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v0, p0, Lorg/apache/poi/java/awt/FileDialog;->dir:Ljava/lang/String;

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v0, ",file= "

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v0, p0, Lorg/apache/poi/java/awt/FileDialog;->file:Ljava/lang/String;

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v0, p0, Lorg/apache/poi/java/awt/FileDialog;->mode:I

    if-nez v0, :cond_0

    const-string v0, ",load"

    goto :goto_0

    :cond_0
    const-string v0, ",save"

    :goto_0
    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public postsOldMouseEvents()Z
    .locals 1

    const/4 v0, 0x0

    return v0
.end method

.method public setDirectory(Ljava/lang/String;)V
    .locals 1

    if-eqz p1, :cond_0

    const-string v0, ""

    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 p1, 0x0

    :cond_0
    iput-object p1, p0, Lorg/apache/poi/java/awt/FileDialog;->dir:Ljava/lang/String;

    iget-object v0, p0, Lorg/apache/poi/java/awt/Component;->peer:Lorg/apache/poi/java/awt/peer/ComponentPeer;

    check-cast v0, Lorg/apache/poi/java/awt/peer/FileDialogPeer;

    if-eqz v0, :cond_1

    invoke-interface {v0, p1}, Lorg/apache/poi/java/awt/peer/FileDialogPeer;->setDirectory(Ljava/lang/String;)V

    :cond_1
    return-void
.end method

.method public setFile(Ljava/lang/String;)V
    .locals 1

    if-eqz p1, :cond_0

    const-string v0, ""

    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 p1, 0x0

    :cond_0
    iput-object p1, p0, Lorg/apache/poi/java/awt/FileDialog;->file:Ljava/lang/String;

    iget-object v0, p0, Lorg/apache/poi/java/awt/Component;->peer:Lorg/apache/poi/java/awt/peer/ComponentPeer;

    check-cast v0, Lorg/apache/poi/java/awt/peer/FileDialogPeer;

    if-eqz v0, :cond_1

    invoke-interface {v0, p1}, Lorg/apache/poi/java/awt/peer/FileDialogPeer;->setFile(Ljava/lang/String;)V

    :cond_1
    return-void
.end method

.method public declared-synchronized setFilenameFilter(Ljava/io/FilenameFilter;)V
    .locals 1

    monitor-enter p0

    :try_start_0
    iput-object p1, p0, Lorg/apache/poi/java/awt/FileDialog;->filter:Ljava/io/FilenameFilter;

    iget-object v0, p0, Lorg/apache/poi/java/awt/Component;->peer:Lorg/apache/poi/java/awt/peer/ComponentPeer;

    check-cast v0, Lorg/apache/poi/java/awt/peer/FileDialogPeer;

    if-eqz v0, :cond_0

    invoke-interface {v0, p1}, Lorg/apache/poi/java/awt/peer/FileDialogPeer;->setFilenameFilter(Ljava/io/FilenameFilter;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    :cond_0
    monitor-exit p0

    return-void

    :catchall_0
    move-exception p1

    monitor-exit p0

    throw p1
.end method

.method public setMode(I)V
    .locals 1

    if-eqz p1, :cond_1

    const/4 v0, 0x1

    if-ne p1, v0, :cond_0

    goto :goto_0

    :cond_0
    new-instance p1, Ljava/lang/IllegalArgumentException;

    const-string v0, "illegal file dialog mode"

    invoke-direct {p1, v0}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p1

    :cond_1
    :goto_0
    iput p1, p0, Lorg/apache/poi/java/awt/FileDialog;->mode:I

    return-void
.end method

.method public setMultipleMode(Z)V
    .locals 1

    invoke-virtual {p0}, Lorg/apache/poi/java/awt/Component;->getObjectLock()Ljava/lang/Object;

    move-result-object v0

    monitor-enter v0

    :try_start_0
    iput-boolean p1, p0, Lorg/apache/poi/java/awt/FileDialog;->multipleMode:Z

    monitor-exit v0

    return-void

    :catchall_0
    move-exception p1

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw p1
.end method
