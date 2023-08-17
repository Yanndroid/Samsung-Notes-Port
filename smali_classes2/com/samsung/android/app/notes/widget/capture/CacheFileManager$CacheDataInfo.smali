.class public Lcom/samsung/android/app/notes/widget/capture/CacheFileManager$CacheDataInfo;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcom/samsung/android/support/senl/nt/composer/main/base/appwidget/IAppWidgetCacheInfo;
.implements Ljava/io/Serializable;
.implements Ljava/lang/Cloneable;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/samsung/android/app/notes/widget/capture/CacheFileManager;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "CacheDataInfo"
.end annotation


# static fields
.field public static final DELETING:I = 0x8

.field public static final DONE:I = 0x7

.field public static final DONE_CAPTURE_INFO_CREATE:I = 0x4

.field public static final DONE_DARK_THUMBNAIL_CAPTURE:I = 0x6

.field public static final DONE_LIGHT_THUMBNAIL_CAPTURE:I = 0x5

.field public static final INIT:I = 0x0

.field public static final READY_BY_SERVICE:I = 0x9

.field public static final READY_THREAD:I = 0x1

.field public static final START_CAPTURE:I = 0x2

.field public static final START_TEXT_ONLY_NOTE_COPY:I = 0x3

.field private static final serialVersionUID:J = 0x1L


# instance fields
.field private backgroundImage:Z

.field private transient backgroundInvert:Z

.field private transient callbackList:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Lcom/samsung/android/app/notes/widget/capture/CacheFileManager$Callback;",
            ">;"
        }
    .end annotation
.end field

.field private transient darkBitmapList:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Landroid/graphics/Bitmap;",
            ">;"
        }
    .end annotation
.end field

.field private docLastModifiedTime:J

.field public filePath:Ljava/lang/String;

.field private transient lightBitmapList:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Landroid/graphics/Bitmap;",
            ">;"
        }
    .end annotation
.end field

.field public listMode:Z

.field public pageColor:I

.field public pageCount:I

.field private state:I

.field private textOnly:Z

.field public textPageCount:I

.field private thumbnailList:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field private voiceRecording:Z

.field private transient widgetIdList:Ljava/util/Set;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Set<",
            "Ljava/lang/Integer;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>()V
    .locals 2

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x0

    iput v0, p0, Lcom/samsung/android/app/notes/widget/capture/CacheFileManager$CacheDataInfo;->state:I

    new-instance v0, Ljava/util/ArrayList;

    const/4 v1, 0x4

    invoke-direct {v0, v1}, Ljava/util/ArrayList;-><init>(I)V

    invoke-virtual {p0, v0}, Lcom/samsung/android/app/notes/widget/capture/CacheFileManager$CacheDataInfo;->init(Ljava/util/List;)V

    return-void
.end method

.method public static bridge synthetic a(Lcom/samsung/android/app/notes/widget/capture/CacheFileManager$CacheDataInfo;)Z
    .locals 0

    iget-boolean p0, p0, Lcom/samsung/android/app/notes/widget/capture/CacheFileManager$CacheDataInfo;->backgroundImage:Z

    return p0
.end method

.method public static bridge synthetic b(Lcom/samsung/android/app/notes/widget/capture/CacheFileManager$CacheDataInfo;)Z
    .locals 0

    iget-boolean p0, p0, Lcom/samsung/android/app/notes/widget/capture/CacheFileManager$CacheDataInfo;->backgroundInvert:Z

    return p0
.end method

.method public static bridge synthetic c(Lcom/samsung/android/app/notes/widget/capture/CacheFileManager$CacheDataInfo;)Ljava/util/List;
    .locals 0

    iget-object p0, p0, Lcom/samsung/android/app/notes/widget/capture/CacheFileManager$CacheDataInfo;->callbackList:Ljava/util/List;

    return-object p0
.end method

.method public static bridge synthetic d(Lcom/samsung/android/app/notes/widget/capture/CacheFileManager$CacheDataInfo;)Ljava/util/List;
    .locals 0

    iget-object p0, p0, Lcom/samsung/android/app/notes/widget/capture/CacheFileManager$CacheDataInfo;->darkBitmapList:Ljava/util/List;

    return-object p0
.end method

.method public static bridge synthetic e(Lcom/samsung/android/app/notes/widget/capture/CacheFileManager$CacheDataInfo;)J
    .locals 2

    iget-wide v0, p0, Lcom/samsung/android/app/notes/widget/capture/CacheFileManager$CacheDataInfo;->docLastModifiedTime:J

    return-wide v0
.end method

.method public static bridge synthetic f(Lcom/samsung/android/app/notes/widget/capture/CacheFileManager$CacheDataInfo;)Ljava/util/List;
    .locals 0

    iget-object p0, p0, Lcom/samsung/android/app/notes/widget/capture/CacheFileManager$CacheDataInfo;->lightBitmapList:Ljava/util/List;

    return-object p0
.end method

.method public static bridge synthetic g(Lcom/samsung/android/app/notes/widget/capture/CacheFileManager$CacheDataInfo;)I
    .locals 0

    iget p0, p0, Lcom/samsung/android/app/notes/widget/capture/CacheFileManager$CacheDataInfo;->state:I

    return p0
.end method

.method public static bridge synthetic h(Lcom/samsung/android/app/notes/widget/capture/CacheFileManager$CacheDataInfo;)Z
    .locals 0

    iget-boolean p0, p0, Lcom/samsung/android/app/notes/widget/capture/CacheFileManager$CacheDataInfo;->textOnly:Z

    return p0
.end method

.method public static bridge synthetic i(Lcom/samsung/android/app/notes/widget/capture/CacheFileManager$CacheDataInfo;)Ljava/util/List;
    .locals 0

    iget-object p0, p0, Lcom/samsung/android/app/notes/widget/capture/CacheFileManager$CacheDataInfo;->thumbnailList:Ljava/util/List;

    return-object p0
.end method

.method public static bridge synthetic j(Lcom/samsung/android/app/notes/widget/capture/CacheFileManager$CacheDataInfo;)Z
    .locals 0

    iget-boolean p0, p0, Lcom/samsung/android/app/notes/widget/capture/CacheFileManager$CacheDataInfo;->voiceRecording:Z

    return p0
.end method

.method public static bridge synthetic k(Lcom/samsung/android/app/notes/widget/capture/CacheFileManager$CacheDataInfo;)Ljava/util/Set;
    .locals 0

    iget-object p0, p0, Lcom/samsung/android/app/notes/widget/capture/CacheFileManager$CacheDataInfo;->widgetIdList:Ljava/util/Set;

    return-object p0
.end method

.method public static bridge synthetic l(Lcom/samsung/android/app/notes/widget/capture/CacheFileManager$CacheDataInfo;Ljava/util/List;)V
    .locals 0

    iput-object p1, p0, Lcom/samsung/android/app/notes/widget/capture/CacheFileManager$CacheDataInfo;->callbackList:Ljava/util/List;

    return-void
.end method

.method public static bridge synthetic m(Lcom/samsung/android/app/notes/widget/capture/CacheFileManager$CacheDataInfo;I)V
    .locals 0

    iput p1, p0, Lcom/samsung/android/app/notes/widget/capture/CacheFileManager$CacheDataInfo;->state:I

    return-void
.end method

.method public static bridge synthetic n(Lcom/samsung/android/app/notes/widget/capture/CacheFileManager$CacheDataInfo;Z)V
    .locals 0

    iput-boolean p1, p0, Lcom/samsung/android/app/notes/widget/capture/CacheFileManager$CacheDataInfo;->textOnly:Z

    return-void
.end method


# virtual methods
.method public addCallback(Lcom/samsung/android/app/notes/widget/capture/CacheFileManager$Callback;)V
    .locals 2

    if-nez p1, :cond_0

    return-void

    :cond_0
    iget-object v0, p0, Lcom/samsung/android/app/notes/widget/capture/CacheFileManager$CacheDataInfo;->callbackList:Ljava/util/List;

    if-nez v0, :cond_1

    new-instance v0, Ljava/util/ArrayList;

    const/4 v1, 0x5

    invoke-direct {v0, v1}, Ljava/util/ArrayList;-><init>(I)V

    iput-object v0, p0, Lcom/samsung/android/app/notes/widget/capture/CacheFileManager$CacheDataInfo;->callbackList:Ljava/util/List;

    :cond_1
    iget-object v0, p0, Lcom/samsung/android/app/notes/widget/capture/CacheFileManager$CacheDataInfo;->callbackList:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    return-void
.end method

.method public addThumbnailPath(Ljava/lang/String;)V
    .locals 1

    iget-object v0, p0, Lcom/samsung/android/app/notes/widget/capture/CacheFileManager$CacheDataInfo;->thumbnailList:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    return-void
.end method

.method public addWidgetIdList(Ljava/util/ArrayList;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/ArrayList<",
            "Ljava/lang/Integer;",
            ">;)V"
        }
    .end annotation

    iget-object v0, p0, Lcom/samsung/android/app/notes/widget/capture/CacheFileManager$CacheDataInfo;->widgetIdList:Ljava/util/Set;

    invoke-interface {v0, p1}, Ljava/util/Set;->addAll(Ljava/util/Collection;)Z

    return-void
.end method

.method public clone()Lcom/samsung/android/app/notes/widget/capture/CacheFileManager$CacheDataInfo;
    .locals 1
    .annotation build Landroidx/annotation/NonNull;
    .end annotation

    invoke-super {p0}, Ljava/lang/Object;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/samsung/android/app/notes/widget/capture/CacheFileManager$CacheDataInfo;

    return-object v0
.end method

.method public bridge synthetic clone()Ljava/lang/Object;
    .locals 1
    .annotation build Landroidx/annotation/NonNull;
    .end annotation

    invoke-virtual {p0}, Lcom/samsung/android/app/notes/widget/capture/CacheFileManager$CacheDataInfo;->clone()Lcom/samsung/android/app/notes/widget/capture/CacheFileManager$CacheDataInfo;

    move-result-object v0

    return-object v0
.end method

.method public declared-synchronized getState()I
    .locals 1

    monitor-enter p0

    :try_start_0
    iget v0, p0, Lcom/samsung/android/app/notes/widget/capture/CacheFileManager$CacheDataInfo;->state:I
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit p0

    return v0

    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public init(Ljava/util/List;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;)V"
        }
    .end annotation

    invoke-static {p1}, Ljava/util/Collections;->synchronizedList(Ljava/util/List;)Ljava/util/List;

    move-result-object p1

    iput-object p1, p0, Lcom/samsung/android/app/notes/widget/capture/CacheFileManager$CacheDataInfo;->thumbnailList:Ljava/util/List;

    invoke-virtual {p0}, Lcom/samsung/android/app/notes/widget/capture/CacheFileManager$CacheDataInfo;->initWidgetIdList()V

    return-void
.end method

.method public initWidgetIdList()V
    .locals 1

    new-instance v0, Ljava/util/HashSet;

    invoke-direct {v0}, Ljava/util/HashSet;-><init>()V

    invoke-static {v0}, Ljava/util/Collections;->synchronizedSet(Ljava/util/Set;)Ljava/util/Set;

    move-result-object v0

    iput-object v0, p0, Lcom/samsung/android/app/notes/widget/capture/CacheFileManager$CacheDataInfo;->widgetIdList:Ljava/util/Set;

    return-void
.end method

.method public saveData(Landroid/content/Context;Ljava/lang/String;)V
    .locals 2

    const-string v0, "CacheFileManager"

    const-string v1, "saveData#"

    invoke-static {v0, v1}, Lcom/samsung/android/support/senl/cm/base/framework/support/LoggerBase;->d(Ljava/lang/String;Ljava/lang/String;)V

    new-instance v1, Ljava/io/File;

    invoke-static {p1, p2}, Lcom/samsung/android/app/notes/widget/util/WidgetUtils;->getCacheDataFilePath(Landroid/content/Context;Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    invoke-direct {v1, p1}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1}, Ljava/io/File;->exists()Z

    move-result p1

    if-nez p1, :cond_0

    :try_start_0
    invoke-virtual {v1}, Ljava/io/File;->createNewFile()Z

    move-result p1

    if-nez p1, :cond_0

    const-string p1, "saveData# fail to create file"

    invoke-static {v0, p1}, Lcom/samsung/android/support/senl/cm/base/framework/support/LoggerBase;->w(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    return-void

    :catch_0
    move-exception p1

    invoke-virtual {p1}, Ljava/io/IOException;->getMessage()Ljava/lang/String;

    move-result-object p2

    invoke-static {v0, p2, p1}, Lcom/samsung/android/support/senl/cm/base/framework/support/LoggerBase;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V

    return-void

    :cond_0
    :try_start_1
    new-instance p1, Ljava/io/FileOutputStream;

    invoke-direct {p1, v1}, Ljava/io/FileOutputStream;-><init>(Ljava/io/File;)V
    :try_end_1
    .catch Ljava/io/IOException; {:try_start_1 .. :try_end_1} :catch_2
    .catch Ljava/lang/CloneNotSupportedException; {:try_start_1 .. :try_end_1} :catch_1

    :try_start_2
    new-instance p2, Ljava/io/ObjectOutputStream;

    invoke-direct {p2, p1}, Ljava/io/ObjectOutputStream;-><init>(Ljava/io/OutputStream;)V
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_2

    :try_start_3
    invoke-virtual {p0}, Lcom/samsung/android/app/notes/widget/capture/CacheFileManager$CacheDataInfo;->clone()Lcom/samsung/android/app/notes/widget/capture/CacheFileManager$CacheDataInfo;

    move-result-object v1

    invoke-virtual {p2, v1}, Ljava/io/ObjectOutputStream;->writeObject(Ljava/lang/Object;)V
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    :try_start_4
    invoke-virtual {p2}, Ljava/io/ObjectOutputStream;->close()V
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_2

    :try_start_5
    invoke-virtual {p1}, Ljava/io/FileOutputStream;->close()V
    :try_end_5
    .catch Ljava/io/IOException; {:try_start_5 .. :try_end_5} :catch_2
    .catch Ljava/lang/CloneNotSupportedException; {:try_start_5 .. :try_end_5} :catch_1

    goto :goto_3

    :catchall_0
    move-exception v1

    :try_start_6
    invoke-virtual {p2}, Ljava/io/ObjectOutputStream;->close()V
    :try_end_6
    .catchall {:try_start_6 .. :try_end_6} :catchall_1

    goto :goto_0

    :catchall_1
    move-exception p2

    :try_start_7
    invoke-virtual {v1, p2}, Ljava/lang/Throwable;->addSuppressed(Ljava/lang/Throwable;)V

    :goto_0
    throw v1
    :try_end_7
    .catchall {:try_start_7 .. :try_end_7} :catchall_2

    :catchall_2
    move-exception p2

    :try_start_8
    invoke-virtual {p1}, Ljava/io/FileOutputStream;->close()V
    :try_end_8
    .catchall {:try_start_8 .. :try_end_8} :catchall_3

    goto :goto_1

    :catchall_3
    move-exception p1

    :try_start_9
    invoke-virtual {p2, p1}, Ljava/lang/Throwable;->addSuppressed(Ljava/lang/Throwable;)V

    :goto_1
    throw p2
    :try_end_9
    .catch Ljava/io/IOException; {:try_start_9 .. :try_end_9} :catch_2
    .catch Ljava/lang/CloneNotSupportedException; {:try_start_9 .. :try_end_9} :catch_1

    :catch_1
    move-exception p1

    goto :goto_2

    :catch_2
    move-exception p1

    :goto_2
    invoke-virtual {p1}, Ljava/lang/Exception;->getMessage()Ljava/lang/String;

    move-result-object p1

    invoke-static {v0, p1}, Lcom/samsung/android/support/senl/cm/base/framework/support/LoggerBase;->e(Ljava/lang/String;Ljava/lang/String;)V

    :goto_3
    return-void
.end method

.method public setBackgroundColorInvert(Z)V
    .locals 0

    iput-boolean p1, p0, Lcom/samsung/android/app/notes/widget/capture/CacheFileManager$CacheDataInfo;->backgroundInvert:Z

    return-void
.end method

.method public setBackgroundImage(Z)V
    .locals 0

    iput-boolean p1, p0, Lcom/samsung/android/app/notes/widget/capture/CacheFileManager$CacheDataInfo;->backgroundImage:Z

    return-void
.end method

.method public setDarkBitmapList(Ljava/util/List;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Landroid/graphics/Bitmap;",
            ">;)V"
        }
    .end annotation

    iput-object p1, p0, Lcom/samsung/android/app/notes/widget/capture/CacheFileManager$CacheDataInfo;->darkBitmapList:Ljava/util/List;

    return-void
.end method

.method public setDocLastModifiedTime(J)V
    .locals 0

    iput-wide p1, p0, Lcom/samsung/android/app/notes/widget/capture/CacheFileManager$CacheDataInfo;->docLastModifiedTime:J

    return-void
.end method

.method public setFilePath(Ljava/lang/String;)V
    .locals 0

    iput-object p1, p0, Lcom/samsung/android/app/notes/widget/capture/CacheFileManager$CacheDataInfo;->filePath:Ljava/lang/String;

    return-void
.end method

.method public setLightBitmapList(Ljava/util/List;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Landroid/graphics/Bitmap;",
            ">;)V"
        }
    .end annotation

    iput-object p1, p0, Lcom/samsung/android/app/notes/widget/capture/CacheFileManager$CacheDataInfo;->lightBitmapList:Ljava/util/List;

    return-void
.end method

.method public setListMode(Z)V
    .locals 0

    iput-boolean p1, p0, Lcom/samsung/android/app/notes/widget/capture/CacheFileManager$CacheDataInfo;->listMode:Z

    return-void
.end method

.method public setPageColor(I)V
    .locals 0

    iput p1, p0, Lcom/samsung/android/app/notes/widget/capture/CacheFileManager$CacheDataInfo;->pageColor:I

    return-void
.end method

.method public setPageCount(I)V
    .locals 0

    iput p1, p0, Lcom/samsung/android/app/notes/widget/capture/CacheFileManager$CacheDataInfo;->pageCount:I

    iput p1, p0, Lcom/samsung/android/app/notes/widget/capture/CacheFileManager$CacheDataInfo;->textPageCount:I

    return-void
.end method

.method public declared-synchronized setState(I)V
    .locals 0

    monitor-enter p0

    :try_start_0
    iput p1, p0, Lcom/samsung/android/app/notes/widget/capture/CacheFileManager$CacheDataInfo;->state:I
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit p0

    return-void

    :catchall_0
    move-exception p1

    monitor-exit p0

    throw p1
.end method

.method public setVoiceRecording(Z)V
    .locals 0

    iput-boolean p1, p0, Lcom/samsung/android/app/notes/widget/capture/CacheFileManager$CacheDataInfo;->voiceRecording:Z

    return-void
.end method
