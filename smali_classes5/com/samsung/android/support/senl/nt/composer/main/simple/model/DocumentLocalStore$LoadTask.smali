.class Lcom/samsung/android/support/senl/nt/composer/main/simple/model/DocumentLocalStore$LoadTask;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/util/concurrent/Callable;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/samsung/android/support/senl/nt/composer/main/simple/model/DocumentLocalStore;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "LoadTask"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Ljava/util/concurrent/Callable<",
        "Ljava/lang/Void;",
        ">;"
    }
.end annotation


# instance fields
.field private final mContext:Landroid/content/Context;

.field private final mLoadNoteListener:Lcom/samsung/android/support/senl/nt/composer/main/simple/model/DocumentLoadContract$LoadListener;

.field private final mLoadPath:Ljava/lang/String;

.field private final mPageWidth:I


# direct methods
.method public constructor <init>(Landroid/content/Context;Ljava/lang/String;ILcom/samsung/android/support/senl/nt/composer/main/simple/model/DocumentLoadContract$LoadListener;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/samsung/android/support/senl/nt/composer/main/simple/model/DocumentLocalStore$LoadTask;->mContext:Landroid/content/Context;

    iput-object p2, p0, Lcom/samsung/android/support/senl/nt/composer/main/simple/model/DocumentLocalStore$LoadTask;->mLoadPath:Ljava/lang/String;

    iput p3, p0, Lcom/samsung/android/support/senl/nt/composer/main/simple/model/DocumentLocalStore$LoadTask;->mPageWidth:I

    iput-object p4, p0, Lcom/samsung/android/support/senl/nt/composer/main/simple/model/DocumentLocalStore$LoadTask;->mLoadNoteListener:Lcom/samsung/android/support/senl/nt/composer/main/simple/model/DocumentLoadContract$LoadListener;

    return-void
.end method


# virtual methods
.method public bridge synthetic call()Ljava/lang/Object;
    .locals 1

    invoke-virtual {p0}, Lcom/samsung/android/support/senl/nt/composer/main/simple/model/DocumentLocalStore$LoadTask;->call()Ljava/lang/Void;

    move-result-object v0

    return-object v0
.end method

.method public call()Ljava/lang/Void;
    .locals 10

    invoke-static {}, Lcom/samsung/android/support/senl/nt/composer/main/simple/model/DocumentLocalStore;->h()Ljava/lang/String;

    move-result-object v0

    const-string v1, "LoadTask#start"

    invoke-static {v0, v1}, Lcom/samsung/android/support/senl/cm/base/framework/support/LoggerBase;->i(Ljava/lang/String;Ljava/lang/String;)V

    :try_start_0
    new-instance v0, Lcom/samsung/android/sdk/pen/worddoc/SpenWNote;

    iget-object v3, p0, Lcom/samsung/android/support/senl/nt/composer/main/simple/model/DocumentLocalStore$LoadTask;->mContext:Landroid/content/Context;

    iget-object v4, p0, Lcom/samsung/android/support/senl/nt/composer/main/simple/model/DocumentLocalStore$LoadTask;->mLoadPath:Ljava/lang/String;

    iget v5, p0, Lcom/samsung/android/support/senl/nt/composer/main/simple/model/DocumentLocalStore$LoadTask;->mPageWidth:I

    const/16 v6, 0x3e8

    const/4 v7, 0x0

    const/4 v8, 0x0

    const/4 v9, 0x0

    move-object v2, v0

    invoke-direct/range {v2 .. v9}, Lcom/samsung/android/sdk/pen/worddoc/SpenWNote;-><init>(Landroid/content/Context;Ljava/lang/String;IIZZZ)V

    iget-object v1, p0, Lcom/samsung/android/support/senl/nt/composer/main/simple/model/DocumentLocalStore$LoadTask;->mLoadNoteListener:Lcom/samsung/android/support/senl/nt/composer/main/simple/model/DocumentLoadContract$LoadListener;

    invoke-interface {v1, v0}, Lcom/samsung/android/support/senl/nt/composer/main/simple/model/DocumentLoadContract$LoadListener;->onLoadNoteCompleted(Lcom/samsung/android/sdk/pen/worddoc/SpenWNote;)V
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_2
    .catch Lcom/samsung/android/sdk/pen/document/SpenUnsupportedTypeException; {:try_start_0 .. :try_end_0} :catch_1
    .catch Lcom/samsung/android/sdk/pen/document/SpenUnsupportedVersionException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_1

    :catch_0
    move-exception v0

    goto :goto_0

    :catch_1
    move-exception v0

    goto :goto_0

    :catch_2
    move-exception v0

    :goto_0
    invoke-static {}, Lcom/samsung/android/support/senl/nt/composer/main/simple/model/DocumentLocalStore;->h()Ljava/lang/String;

    move-result-object v1

    const-string v2, "load# fail "

    invoke-static {v1, v2, v0}, Lcom/samsung/android/support/senl/cm/base/framework/support/LoggerBase;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V

    iget-object v1, p0, Lcom/samsung/android/support/senl/nt/composer/main/simple/model/DocumentLocalStore$LoadTask;->mLoadNoteListener:Lcom/samsung/android/support/senl/nt/composer/main/simple/model/DocumentLoadContract$LoadListener;

    invoke-interface {v1, v0}, Lcom/samsung/android/support/senl/nt/composer/main/simple/model/DocumentLoadContract$LoadListener;->onLoadNoteFailed(Ljava/lang/Throwable;)V

    :goto_1
    invoke-static {}, Lcom/samsung/android/support/senl/nt/composer/main/simple/model/DocumentLocalStore;->h()Ljava/lang/String;

    move-result-object v0

    const-string v1, "LoadTask#end"

    invoke-static {v0, v1}, Lcom/samsung/android/support/senl/cm/base/framework/support/LoggerBase;->i(Ljava/lang/String;Ljava/lang/String;)V

    const/4 v0, 0x0

    return-object v0
.end method
