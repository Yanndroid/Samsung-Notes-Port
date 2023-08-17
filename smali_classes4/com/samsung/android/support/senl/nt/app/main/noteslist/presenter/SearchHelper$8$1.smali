.class Lcom/samsung/android/support/senl/nt/app/main/noteslist/presenter/SearchHelper$8$1;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/samsung/android/support/senl/nt/app/main/noteslist/presenter/SearchHelper$8;->run()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = null
.end annotation


# instance fields
.field public final synthetic this$1:Lcom/samsung/android/support/senl/nt/app/main/noteslist/presenter/SearchHelper$8;


# direct methods
.method public constructor <init>(Lcom/samsung/android/support/senl/nt/app/main/noteslist/presenter/SearchHelper$8;)V
    .locals 0

    iput-object p1, p0, Lcom/samsung/android/support/senl/nt/app/main/noteslist/presenter/SearchHelper$8$1;->this$1:Lcom/samsung/android/support/senl/nt/app/main/noteslist/presenter/SearchHelper$8;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 4

    iget-object v0, p0, Lcom/samsung/android/support/senl/nt/app/main/noteslist/presenter/SearchHelper$8$1;->this$1:Lcom/samsung/android/support/senl/nt/app/main/noteslist/presenter/SearchHelper$8;

    iget-object v1, v0, Lcom/samsung/android/support/senl/nt/app/main/noteslist/presenter/SearchHelper$8;->this$0:Lcom/samsung/android/support/senl/nt/app/main/noteslist/presenter/SearchHelper;

    iget-object v2, v0, Lcom/samsung/android/support/senl/nt/app/main/noteslist/presenter/SearchHelper$8;->val$searchResult:[Ljava/util/List;

    const/4 v3, 0x0

    aget-object v2, v2, v3

    iget-object v0, v0, Lcom/samsung/android/support/senl/nt/app/main/noteslist/presenter/SearchHelper$8;->val$searchString:Ljava/lang/String;

    invoke-static {v1, v2, v0}, Lcom/samsung/android/support/senl/nt/app/main/noteslist/presenter/SearchHelper;->f(Lcom/samsung/android/support/senl/nt/app/main/noteslist/presenter/SearchHelper;Ljava/util/List;Ljava/lang/String;)V

    return-void
.end method
