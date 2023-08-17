.class public final synthetic Li4/b;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Landroidx/arch/core/util/Function;


# instance fields
.field public final synthetic a:Lcom/samsung/android/support/senl/nt/data/repository/recognition/NotesStrokeRepository;

.field public final synthetic b:Ljava/lang/String;


# direct methods
.method public synthetic constructor <init>(Lcom/samsung/android/support/senl/nt/data/repository/recognition/NotesStrokeRepository;Ljava/lang/String;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Li4/b;->a:Lcom/samsung/android/support/senl/nt/data/repository/recognition/NotesStrokeRepository;

    iput-object p2, p0, Li4/b;->b:Ljava/lang/String;

    return-void
.end method


# virtual methods
.method public final apply(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 2

    iget-object v0, p0, Li4/b;->a:Lcom/samsung/android/support/senl/nt/data/repository/recognition/NotesStrokeRepository;

    iget-object v1, p0, Li4/b;->b:Ljava/lang/String;

    check-cast p1, Ljava/util/List;

    invoke-static {v0, v1, p1}, Lcom/samsung/android/support/senl/nt/data/repository/recognition/NotesStrokeRepository;->a(Lcom/samsung/android/support/senl/nt/data/repository/recognition/NotesStrokeRepository;Ljava/lang/String;Ljava/util/List;)Ljava/util/List;

    move-result-object p1

    return-object p1
.end method
