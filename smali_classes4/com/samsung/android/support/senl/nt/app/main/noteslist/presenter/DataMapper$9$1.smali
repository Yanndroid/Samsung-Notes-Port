.class Lcom/samsung/android/support/senl/nt/app/main/noteslist/presenter/DataMapper$9$1;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcom/samsung/android/support/senl/nt/app/main/noteslist/presenter/SearchHelper$PresenterContract;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/samsung/android/support/senl/nt/app/main/noteslist/presenter/DataMapper$9;->build()Lcom/samsung/android/support/senl/nt/app/main/noteslist/presenter/SearchHelper;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = null
.end annotation


# instance fields
.field public final synthetic this$1:Lcom/samsung/android/support/senl/nt/app/main/noteslist/presenter/DataMapper$9;


# direct methods
.method public constructor <init>(Lcom/samsung/android/support/senl/nt/app/main/noteslist/presenter/DataMapper$9;)V
    .locals 0

    iput-object p1, p0, Lcom/samsung/android/support/senl/nt/app/main/noteslist/presenter/DataMapper$9$1;->this$1:Lcom/samsung/android/support/senl/nt/app/main/noteslist/presenter/DataMapper$9;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public notifyDataSetChanged(Ljava/lang/String;)V
    .locals 1

    iget-object v0, p0, Lcom/samsung/android/support/senl/nt/app/main/noteslist/presenter/DataMapper$9$1;->this$1:Lcom/samsung/android/support/senl/nt/app/main/noteslist/presenter/DataMapper$9;

    iget-object v0, v0, Lcom/samsung/android/support/senl/nt/app/main/noteslist/presenter/DataMapper$9;->this$0:Lcom/samsung/android/support/senl/nt/app/main/noteslist/presenter/DataMapper;

    iget-object v0, v0, Lcom/samsung/android/support/senl/nt/app/main/noteslist/presenter/DataMapper;->mAdapterManager:Lcom/samsung/android/support/senl/nt/app/main/noteslist/presenter/AdapterManager;

    invoke-virtual {v0, p1}, Lcom/samsung/android/support/senl/nt/app/main/noteslist/presenter/AdapterManager;->notifyDataSetChanged(Ljava/lang/String;)V

    return-void
.end method

.method public setHighlightText(Ljava/lang/String;)V
    .locals 1

    iget-object v0, p0, Lcom/samsung/android/support/senl/nt/app/main/noteslist/presenter/DataMapper$9$1;->this$1:Lcom/samsung/android/support/senl/nt/app/main/noteslist/presenter/DataMapper$9;

    iget-object v0, v0, Lcom/samsung/android/support/senl/nt/app/main/noteslist/presenter/DataMapper$9;->this$0:Lcom/samsung/android/support/senl/nt/app/main/noteslist/presenter/DataMapper;

    iget-object v0, v0, Lcom/samsung/android/support/senl/nt/app/main/noteslist/presenter/DataMapper;->mAdapterManager:Lcom/samsung/android/support/senl/nt/app/main/noteslist/presenter/AdapterManager;

    invoke-virtual {v0, p1}, Lcom/samsung/android/support/senl/nt/app/main/noteslist/presenter/AdapterManager;->setHighlightText(Ljava/lang/String;)V

    return-void
.end method
