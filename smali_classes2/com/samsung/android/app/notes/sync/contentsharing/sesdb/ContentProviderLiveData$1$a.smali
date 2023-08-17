.class public Lcom/samsung/android/app/notes/sync/contentsharing/sesdb/ContentProviderLiveData$1$a;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/samsung/android/app/notes/sync/contentsharing/sesdb/ContentProviderLiveData$1;->onChange(Z)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = null
.end annotation


# instance fields
.field public final synthetic a:Lcom/samsung/android/app/notes/sync/contentsharing/sesdb/ContentProviderLiveData$1;


# direct methods
.method public constructor <init>(Lcom/samsung/android/app/notes/sync/contentsharing/sesdb/ContentProviderLiveData$1;)V
    .locals 0

    iput-object p1, p0, Lcom/samsung/android/app/notes/sync/contentsharing/sesdb/ContentProviderLiveData$1$a;->a:Lcom/samsung/android/app/notes/sync/contentsharing/sesdb/ContentProviderLiveData$1;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 2

    iget-object v0, p0, Lcom/samsung/android/app/notes/sync/contentsharing/sesdb/ContentProviderLiveData$1$a;->a:Lcom/samsung/android/app/notes/sync/contentsharing/sesdb/ContentProviderLiveData$1;

    iget-object v0, v0, Lcom/samsung/android/app/notes/sync/contentsharing/sesdb/ContentProviderLiveData$1;->this$0:Lcom/samsung/android/app/notes/sync/contentsharing/sesdb/ContentProviderLiveData;

    invoke-virtual {v0}, Lcom/samsung/android/app/notes/sync/contentsharing/sesdb/ContentProviderLiveData;->a()Ljava/lang/Object;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroidx/lifecycle/MutableLiveData;->postValue(Ljava/lang/Object;)V

    return-void
.end method
