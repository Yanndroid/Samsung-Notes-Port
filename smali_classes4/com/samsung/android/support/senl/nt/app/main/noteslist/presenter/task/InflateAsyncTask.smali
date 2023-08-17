.class public Lcom/samsung/android/support/senl/nt/app/main/noteslist/presenter/task/InflateAsyncTask;
.super Landroid/os/AsyncTask;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/samsung/android/support/senl/nt/app/main/noteslist/presenter/task/InflateAsyncTask$TaskListener;
    }
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Landroid/os/AsyncTask<",
        "Ljava/lang/Void;",
        "Ljava/lang/Void;",
        "Ljava/lang/Void;",
        ">;"
    }
.end annotation


# static fields
.field public static final GRID_INFLATE_COUNT:I = 0x8

.field public static final LIST_INFLATE_COUNT:I = 0x5

.field public static final SIMPLE_INFLATE_COUNT:I = 0xc

.field public static final TAG:Ljava/lang/String; = "InflateAsyncTask"


# instance fields
.field private final mTaskListener:Lcom/samsung/android/support/senl/nt/app/main/noteslist/presenter/task/InflateAsyncTask$TaskListener;

.field private final mViewMode:I

.field private final weakReference:Ljava/lang/ref/WeakReference;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/lang/ref/WeakReference<",
            "Lcom/samsung/android/support/senl/nt/app/main/common/view/NotesPenRecyclerView;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>(Lcom/samsung/android/support/senl/nt/app/main/common/view/NotesPenRecyclerView;ILcom/samsung/android/support/senl/nt/app/main/noteslist/presenter/task/InflateAsyncTask$TaskListener;)V
    .locals 1

    invoke-direct {p0}, Landroid/os/AsyncTask;-><init>()V

    new-instance v0, Ljava/lang/ref/WeakReference;

    invoke-direct {v0, p1}, Ljava/lang/ref/WeakReference;-><init>(Ljava/lang/Object;)V

    iput-object v0, p0, Lcom/samsung/android/support/senl/nt/app/main/noteslist/presenter/task/InflateAsyncTask;->weakReference:Ljava/lang/ref/WeakReference;

    iput p2, p0, Lcom/samsung/android/support/senl/nt/app/main/noteslist/presenter/task/InflateAsyncTask;->mViewMode:I

    iput-object p3, p0, Lcom/samsung/android/support/senl/nt/app/main/noteslist/presenter/task/InflateAsyncTask;->mTaskListener:Lcom/samsung/android/support/senl/nt/app/main/noteslist/presenter/task/InflateAsyncTask$TaskListener;

    return-void
.end method

.method private inflateHolders()V
    .locals 10

    const-string v0, "InflateAsyncTask"

    const-string v1, "Inflate task doInBackground start"

    invoke-static {v0, v1}, Lcom/samsung/android/support/senl/nt/app/common/log/MainLogger;->i(Ljava/lang/String;Ljava/lang/String;)V

    iget-object v1, p0, Lcom/samsung/android/support/senl/nt/app/main/noteslist/presenter/task/InflateAsyncTask;->weakReference:Ljava/lang/ref/WeakReference;

    invoke-virtual {v1}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/samsung/android/support/senl/nt/app/main/common/view/NotesPenRecyclerView;

    iget-object v2, p0, Lcom/samsung/android/support/senl/nt/app/main/noteslist/presenter/task/InflateAsyncTask;->mTaskListener:Lcom/samsung/android/support/senl/nt/app/main/noteslist/presenter/task/InflateAsyncTask$TaskListener;

    if-eqz v2, :cond_3

    if-nez v1, :cond_0

    goto :goto_3

    :cond_0
    invoke-virtual {v1}, Landroid/view/ViewGroup;->getContext()Landroid/content/Context;

    move-result-object v2

    iget v3, p0, Lcom/samsung/android/support/senl/nt/app/main/noteslist/presenter/task/InflateAsyncTask;->mViewMode:I

    const/16 v4, 0xc

    packed-switch v3, :pswitch_data_0

    return-void

    :pswitch_0
    sget v3, Lcom/samsung/android/support/senl/nt/app/R$layout;->notes_simple_item_no_thumbnail:I

    goto :goto_0

    :pswitch_1
    sget v3, Lcom/samsung/android/support/senl/nt/app/R$layout;->notes_simple_item:I

    goto :goto_0

    :pswitch_2
    const/16 v4, 0x8

    sget v3, Lcom/samsung/android/support/senl/nt/app/R$layout;->notes_grid_item:I

    goto :goto_0

    :pswitch_3
    const/4 v4, 0x5

    sget v3, Lcom/samsung/android/support/senl/nt/app/R$layout;->notes_list_item:I

    :goto_0
    :try_start_0
    iget-object v5, p0, Lcom/samsung/android/support/senl/nt/app/main/noteslist/presenter/task/InflateAsyncTask;->mTaskListener:Lcom/samsung/android/support/senl/nt/app/main/noteslist/presenter/task/InflateAsyncTask$TaskListener;

    invoke-interface {v5}, Lcom/samsung/android/support/senl/nt/app/main/noteslist/presenter/task/InflateAsyncTask$TaskListener;->needInflatedView()Z

    move-result v5

    const/4 v6, 0x0

    if-eqz v5, :cond_1

    iget-object v5, p0, Lcom/samsung/android/support/senl/nt/app/main/noteslist/presenter/task/InflateAsyncTask;->mTaskListener:Lcom/samsung/android/support/senl/nt/app/main/noteslist/presenter/task/InflateAsyncTask$TaskListener;

    invoke-static {v2}, Landroid/view/LayoutInflater;->from(Landroid/content/Context;)Landroid/view/LayoutInflater;

    move-result-object v7

    invoke-virtual {v2}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v8

    sget v9, Lcom/samsung/android/support/senl/nt/app/R$layout;->notes_sort_bar_holder:I

    invoke-virtual {v8, v9}, Landroid/content/res/Resources;->getLayout(I)Landroid/content/res/XmlResourceParser;

    move-result-object v8

    invoke-virtual {v7, v8, v1, v6}, Landroid/view/LayoutInflater;->inflate(Lorg/xmlpull/v1/XmlPullParser;Landroid/view/ViewGroup;Z)Landroid/view/View;

    move-result-object v7

    invoke-interface {v5, v7}, Lcom/samsung/android/support/senl/nt/app/main/noteslist/presenter/task/InflateAsyncTask$TaskListener;->addSortbarInflatedView(Landroid/view/View;)V

    :cond_1
    move v5, v6

    :goto_1
    if-ge v5, v4, :cond_3

    iget-object v7, p0, Lcom/samsung/android/support/senl/nt/app/main/noteslist/presenter/task/InflateAsyncTask;->mTaskListener:Lcom/samsung/android/support/senl/nt/app/main/noteslist/presenter/task/InflateAsyncTask$TaskListener;

    invoke-interface {v7}, Lcom/samsung/android/support/senl/nt/app/main/noteslist/presenter/task/InflateAsyncTask$TaskListener;->needInflatedView()Z

    move-result v7

    if-nez v7, :cond_2

    return-void

    :cond_2
    iget-object v7, p0, Lcom/samsung/android/support/senl/nt/app/main/noteslist/presenter/task/InflateAsyncTask;->mTaskListener:Lcom/samsung/android/support/senl/nt/app/main/noteslist/presenter/task/InflateAsyncTask$TaskListener;

    invoke-static {v2}, Landroid/view/LayoutInflater;->from(Landroid/content/Context;)Landroid/view/LayoutInflater;

    move-result-object v8

    invoke-virtual {v2}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v9

    invoke-virtual {v9, v3}, Landroid/content/res/Resources;->getLayout(I)Landroid/content/res/XmlResourceParser;

    move-result-object v9

    invoke-virtual {v8, v9, v1, v6}, Landroid/view/LayoutInflater;->inflate(Lorg/xmlpull/v1/XmlPullParser;Landroid/view/ViewGroup;Z)Landroid/view/View;

    move-result-object v8

    invoke-interface {v7, v8}, Lcom/samsung/android/support/senl/nt/app/main/noteslist/presenter/task/InflateAsyncTask$TaskListener;->addInflatedView(Landroid/view/View;)V
    :try_end_0
    .catch Ljava/lang/IllegalStateException; {:try_start_0 .. :try_end_0} :catch_1
    .catch Landroid/view/InflateException; {:try_start_0 .. :try_end_0} :catch_0

    add-int/lit8 v5, v5, 0x1

    goto :goto_1

    :catch_0
    move-exception v1

    goto :goto_2

    :catch_1
    move-exception v1

    :goto_2
    invoke-virtual {v1}, Ljava/lang/RuntimeException;->getMessage()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/samsung/android/support/senl/nt/app/common/log/MainLogger;->e(Ljava/lang/String;Ljava/lang/String;)V

    :cond_3
    :goto_3
    return-void

    nop

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_3
        :pswitch_2
        :pswitch_1
        :pswitch_2
        :pswitch_2
        :pswitch_0
    .end packed-switch
.end method


# virtual methods
.method public bridge synthetic doInBackground([Ljava/lang/Object;)Ljava/lang/Object;
    .locals 0

    check-cast p1, [Ljava/lang/Void;

    invoke-virtual {p0, p1}, Lcom/samsung/android/support/senl/nt/app/main/noteslist/presenter/task/InflateAsyncTask;->doInBackground([Ljava/lang/Void;)Ljava/lang/Void;

    move-result-object p1

    return-object p1
.end method

.method public varargs doInBackground([Ljava/lang/Void;)Ljava/lang/Void;
    .locals 0

    const-string p1, "NotesFragment AsyncTask(MainList)"

    invoke-static {p1}, Landroid/os/Trace;->beginSection(Ljava/lang/String;)V

    iget-object p1, p0, Lcom/samsung/android/support/senl/nt/app/main/noteslist/presenter/task/InflateAsyncTask;->weakReference:Ljava/lang/ref/WeakReference;

    invoke-virtual {p1}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object p1

    if-eqz p1, :cond_0

    invoke-direct {p0}, Lcom/samsung/android/support/senl/nt/app/main/noteslist/presenter/task/InflateAsyncTask;->inflateHolders()V

    :cond_0
    invoke-static {}, Landroid/os/Trace;->endSection()V

    const/4 p1, 0x0

    return-object p1
.end method
