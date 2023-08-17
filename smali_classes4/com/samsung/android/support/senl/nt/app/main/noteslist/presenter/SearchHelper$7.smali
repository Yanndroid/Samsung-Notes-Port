.class Lcom/samsung/android/support/senl/nt/app/main/noteslist/presenter/SearchHelper$7;
.super Lcom/samsung/android/support/senl/nt/app/main/noteslist/presenter/task/DataSearchTask$Runnable;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/samsung/android/support/senl/nt/app/main/noteslist/presenter/SearchHelper;->searchNotesData(Ljava/lang/String;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = null
.end annotation


# instance fields
.field public final synthetic this$0:Lcom/samsung/android/support/senl/nt/app/main/noteslist/presenter/SearchHelper;

.field public final synthetic val$searchResult:[Ljava/util/List;

.field public final synthetic val$searchString:Ljava/lang/String;


# direct methods
.method public constructor <init>(Lcom/samsung/android/support/senl/nt/app/main/noteslist/presenter/SearchHelper;[Ljava/util/List;Ljava/lang/String;)V
    .locals 0

    iput-object p1, p0, Lcom/samsung/android/support/senl/nt/app/main/noteslist/presenter/SearchHelper$7;->this$0:Lcom/samsung/android/support/senl/nt/app/main/noteslist/presenter/SearchHelper;

    iput-object p2, p0, Lcom/samsung/android/support/senl/nt/app/main/noteslist/presenter/SearchHelper$7;->val$searchResult:[Ljava/util/List;

    iput-object p3, p0, Lcom/samsung/android/support/senl/nt/app/main/noteslist/presenter/SearchHelper$7;->val$searchString:Ljava/lang/String;

    invoke-direct {p0}, Lcom/samsung/android/support/senl/nt/app/main/noteslist/presenter/task/DataSearchTask$Runnable;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 3

    iget-object v0, p0, Lcom/samsung/android/support/senl/nt/app/main/noteslist/presenter/SearchHelper$7;->val$searchResult:[Ljava/util/List;

    iget-object v1, p0, Lcom/samsung/android/support/senl/nt/app/main/noteslist/presenter/SearchHelper$7;->this$0:Lcom/samsung/android/support/senl/nt/app/main/noteslist/presenter/SearchHelper;

    iget-object v2, p0, Lcom/samsung/android/support/senl/nt/app/main/noteslist/presenter/SearchHelper$7;->val$searchString:Ljava/lang/String;

    invoke-static {v1, v2}, Lcom/samsung/android/support/senl/nt/app/main/noteslist/presenter/SearchHelper;->g(Lcom/samsung/android/support/senl/nt/app/main/noteslist/presenter/SearchHelper;Ljava/lang/String;)Ljava/util/List;

    move-result-object v1

    const/4 v2, 0x0

    aput-object v1, v0, v2

    return-void
.end method
