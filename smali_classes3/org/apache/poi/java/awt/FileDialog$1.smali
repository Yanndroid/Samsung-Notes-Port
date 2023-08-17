.class final Lorg/apache/poi/java/awt/FileDialog$1;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lorg/apache/poi/sun/awt/AWTAccessor$FileDialogAccessor;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lorg/apache/poi/java/awt/FileDialog;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = null
.end annotation


# direct methods
.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public isMultipleMode(Lorg/apache/poi/java/awt/FileDialog;)Z
    .locals 1

    invoke-virtual {p1}, Lorg/apache/poi/java/awt/Component;->getObjectLock()Ljava/lang/Object;

    move-result-object v0

    monitor-enter v0

    :try_start_0
    invoke-static {p1}, Lorg/apache/poi/java/awt/FileDialog;->access$100(Lorg/apache/poi/java/awt/FileDialog;)Z

    move-result p1

    monitor-exit v0

    return p1

    :catchall_0
    move-exception p1

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw p1
.end method

.method public setDirectory(Lorg/apache/poi/java/awt/FileDialog;Ljava/lang/String;)V
    .locals 1

    const-string v0, ""

    invoke-virtual {v0, p2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 p2, 0x0

    :cond_0
    iput-object p2, p1, Lorg/apache/poi/java/awt/FileDialog;->dir:Ljava/lang/String;

    return-void
.end method

.method public setFile(Lorg/apache/poi/java/awt/FileDialog;Ljava/lang/String;)V
    .locals 1

    const-string v0, ""

    invoke-virtual {v0, p2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 p2, 0x0

    :cond_0
    iput-object p2, p1, Lorg/apache/poi/java/awt/FileDialog;->file:Ljava/lang/String;

    return-void
.end method

.method public setFiles(Lorg/apache/poi/java/awt/FileDialog;[Ljava/io/File;)V
    .locals 0

    invoke-static {p1, p2}, Lorg/apache/poi/java/awt/FileDialog;->access$000(Lorg/apache/poi/java/awt/FileDialog;[Ljava/io/File;)V

    return-void
.end method
