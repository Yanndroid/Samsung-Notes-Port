.class public final synthetic Lcom/samsung/android/support/senl/nt/app/main/noteslist/presenter/b;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field public final synthetic a:Lcom/samsung/android/support/senl/nt/app/main/noteslist/presenter/RecyclerViewHelper;

.field public final synthetic b:Lcom/google/android/material/appbar/AppBarLayout;

.field public final synthetic c:I


# direct methods
.method public synthetic constructor <init>(Lcom/samsung/android/support/senl/nt/app/main/noteslist/presenter/RecyclerViewHelper;Lcom/google/android/material/appbar/AppBarLayout;I)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/samsung/android/support/senl/nt/app/main/noteslist/presenter/b;->a:Lcom/samsung/android/support/senl/nt/app/main/noteslist/presenter/RecyclerViewHelper;

    iput-object p2, p0, Lcom/samsung/android/support/senl/nt/app/main/noteslist/presenter/b;->b:Lcom/google/android/material/appbar/AppBarLayout;

    iput p3, p0, Lcom/samsung/android/support/senl/nt/app/main/noteslist/presenter/b;->c:I

    return-void
.end method


# virtual methods
.method public final run()V
    .locals 3

    iget-object v0, p0, Lcom/samsung/android/support/senl/nt/app/main/noteslist/presenter/b;->a:Lcom/samsung/android/support/senl/nt/app/main/noteslist/presenter/RecyclerViewHelper;

    iget-object v1, p0, Lcom/samsung/android/support/senl/nt/app/main/noteslist/presenter/b;->b:Lcom/google/android/material/appbar/AppBarLayout;

    iget v2, p0, Lcom/samsung/android/support/senl/nt/app/main/noteslist/presenter/b;->c:I

    invoke-static {v0, v1, v2}, Lcom/samsung/android/support/senl/nt/app/main/noteslist/presenter/RecyclerViewHelper;->a(Lcom/samsung/android/support/senl/nt/app/main/noteslist/presenter/RecyclerViewHelper;Lcom/google/android/material/appbar/AppBarLayout;I)V

    return-void
.end method
