.class public Lcom/samsung/android/support/senl/nt/app/common/util/NoteListToDrag;
.super Ljava/lang/Object;
.source "SourceFile"


# static fields
.field public static final NOTES_LIST_DRAG_LABEL:Ljava/lang/String; = "notes_list_drag"

.field private static final TAG:Ljava/lang/String; = "NoteListToDrag"

.field private static mFakedUriForNoteListToDrag:Landroid/net/Uri;

.field private static mUuidForNoteListToDrag:Ljava/lang/String;


# direct methods
.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static clearNoteListTodDrag(Landroid/content/Context;)V
    .locals 1

    const/4 v0, 0x0

    sput-object v0, Lcom/samsung/android/support/senl/nt/app/common/util/NoteListToDrag;->mUuidForNoteListToDrag:Ljava/lang/String;

    sput-object v0, Lcom/samsung/android/support/senl/nt/app/common/util/NoteListToDrag;->mFakedUriForNoteListToDrag:Landroid/net/Uri;

    invoke-static {p0}, Lcom/samsung/android/support/senl/nt/app/common/util/NoteListToDrag;->getNoteListToDragPath(Landroid/content/Context;)Ljava/lang/String;

    move-result-object p0

    invoke-static {p0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_0

    return-void

    :cond_0
    new-instance v0, Ljava/io/File;

    invoke-direct {v0, p0}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0}, Ljava/io/File;->exists()Z

    move-result p0

    if-eqz p0, :cond_1

    invoke-virtual {v0}, Ljava/io/File;->delete()Z

    move-result p0

    if-nez p0, :cond_1

    const-string p0, "NoteListToDrag"

    const-string v0, "clearNoteListTodDrag# file is not successfully deleted"

    invoke-static {p0, v0}, Lcom/samsung/android/support/senl/nt/app/common/log/MainLogger;->e(Ljava/lang/String;Ljava/lang/String;)V

    :cond_1
    return-void
.end method

.method public static getClipData(Landroid/content/Context;Ljava/lang/String;)Landroid/content/ClipData;
    .locals 2
    .annotation build Landroidx/annotation/NonNull;
    .end annotation

    invoke-static {p0, p1}, Lcom/samsung/android/support/senl/nt/app/common/util/NoteListToDrag;->getUriForNoteListToDrag(Landroid/content/Context;Ljava/lang/String;)Landroid/net/Uri;

    move-result-object p0

    new-instance p1, Landroid/content/ClipData$Item;

    invoke-direct {p1, p0}, Landroid/content/ClipData$Item;-><init>(Landroid/net/Uri;)V

    const-string p0, "application/sdoc"

    filled-new-array {p0}, [Ljava/lang/String;

    move-result-object p0

    new-instance v0, Landroid/content/ClipData;

    const-string v1, "notes_list_drag"

    invoke-direct {v0, v1, p0, p1}, Landroid/content/ClipData;-><init>(Ljava/lang/CharSequence;[Ljava/lang/String;Landroid/content/ClipData$Item;)V

    return-object v0
.end method

.method public static getFakedUriForNoteListToDrag()Landroid/net/Uri;
    .locals 1

    sget-object v0, Lcom/samsung/android/support/senl/nt/app/common/util/NoteListToDrag;->mFakedUriForNoteListToDrag:Landroid/net/Uri;

    return-object v0
.end method

.method private static getNoteListToDragPath(Landroid/content/Context;)Ljava/lang/String;
    .locals 2
    .annotation build Landroidx/annotation/Nullable;
    .end annotation

    const-string v0, "NotesList"

    const-string v1, "NotesList.sdocx"

    invoke-static {p0, v0, v1}, Lcom/samsung/android/support/senl/nt/composer/main/base/presenter/task/common/ClipboardCacheManager;->getClipboardFileName(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method private static getUriForNoteListToDrag(Landroid/content/Context;Ljava/lang/String;)Landroid/net/Uri;
    .locals 3

    invoke-static {p0}, Lcom/samsung/android/support/senl/nt/app/common/util/NoteListToDrag;->getNoteListToDragPath(Landroid/content/Context;)Ljava/lang/String;

    move-result-object p0

    invoke-static {p0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 p0, 0x0

    return-object p0

    :cond_0
    new-instance v0, Ljava/io/File;

    invoke-direct {v0, p0}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0}, Ljava/io/File;->exists()Z

    move-result v1

    if-nez v1, :cond_1

    :try_start_0
    invoke-virtual {v0}, Ljava/io/File;->createNewFile()Z
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception v0

    const-string v1, "NoteListToDrag"

    const-string v2, "getUriForNoteListToDrag# "

    invoke-static {v1, v2, v0}, Lcom/samsung/android/support/senl/nt/app/common/log/MainLogger;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V

    :cond_1
    :goto_0
    sput-object p1, Lcom/samsung/android/support/senl/nt/app/common/util/NoteListToDrag;->mUuidForNoteListToDrag:Ljava/lang/String;

    invoke-static {p0}, Lcom/samsung/android/support/senl/nt/base/framework/provider/ClipDataContentProvider;->getUri(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object p0

    sput-object p0, Lcom/samsung/android/support/senl/nt/app/common/util/NoteListToDrag;->mFakedUriForNoteListToDrag:Landroid/net/Uri;

    return-object p0
.end method

.method public static getUuidForNoteListToDrag()Ljava/lang/String;
    .locals 1

    sget-object v0, Lcom/samsung/android/support/senl/nt/app/common/util/NoteListToDrag;->mUuidForNoteListToDrag:Ljava/lang/String;

    return-object v0
.end method
