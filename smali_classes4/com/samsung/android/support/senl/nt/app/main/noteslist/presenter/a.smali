.class public final synthetic Lcom/samsung/android/support/senl/nt/app/main/noteslist/presenter/a;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/util/concurrent/Callable;


# instance fields
.field public final synthetic a:Ljava/util/ArrayList;

.field public final synthetic b:Landroid/content/Context;

.field public final synthetic c:Ljava/lang/String;


# direct methods
.method public synthetic constructor <init>(Ljava/util/ArrayList;Landroid/content/Context;Ljava/lang/String;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/samsung/android/support/senl/nt/app/main/noteslist/presenter/a;->a:Ljava/util/ArrayList;

    iput-object p2, p0, Lcom/samsung/android/support/senl/nt/app/main/noteslist/presenter/a;->b:Landroid/content/Context;

    iput-object p3, p0, Lcom/samsung/android/support/senl/nt/app/main/noteslist/presenter/a;->c:Ljava/lang/String;

    return-void
.end method


# virtual methods
.method public final call()Ljava/lang/Object;
    .locals 3

    iget-object v0, p0, Lcom/samsung/android/support/senl/nt/app/main/noteslist/presenter/a;->a:Ljava/util/ArrayList;

    iget-object v1, p0, Lcom/samsung/android/support/senl/nt/app/main/noteslist/presenter/a;->b:Landroid/content/Context;

    iget-object v2, p0, Lcom/samsung/android/support/senl/nt/app/main/noteslist/presenter/a;->c:Ljava/lang/String;

    invoke-static {v0, v1, v2}, Lcom/samsung/android/support/senl/nt/app/main/noteslist/presenter/CoeditHelper;->a(Ljava/util/ArrayList;Landroid/content/Context;Ljava/lang/String;)Lcom/samsung/android/support/senl/nt/coedit/caller/updownloader/ImportResult;

    move-result-object v0

    return-object v0
.end method
