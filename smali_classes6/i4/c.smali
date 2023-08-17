.class public final synthetic Li4/c;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Landroidx/arch/core/util/Function;


# instance fields
.field public final synthetic a:Lcom/samsung/android/support/senl/nt/data/repository/recognition/NotesStrokeRepository;

.field public final synthetic b:Ljava/lang/String;

.field public final synthetic c:[I


# direct methods
.method public synthetic constructor <init>(Lcom/samsung/android/support/senl/nt/data/repository/recognition/NotesStrokeRepository;Ljava/lang/String;[I)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Li4/c;->a:Lcom/samsung/android/support/senl/nt/data/repository/recognition/NotesStrokeRepository;

    iput-object p2, p0, Li4/c;->b:Ljava/lang/String;

    iput-object p3, p0, Li4/c;->c:[I

    return-void
.end method


# virtual methods
.method public final apply(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 3

    iget-object v0, p0, Li4/c;->a:Lcom/samsung/android/support/senl/nt/data/repository/recognition/NotesStrokeRepository;

    iget-object v1, p0, Li4/c;->b:Ljava/lang/String;

    iget-object v2, p0, Li4/c;->c:[I

    check-cast p1, Ljava/util/List;

    invoke-static {v0, v1, v2, p1}, Lcom/samsung/android/support/senl/nt/data/repository/recognition/NotesStrokeRepository;->b(Lcom/samsung/android/support/senl/nt/data/repository/recognition/NotesStrokeRepository;Ljava/lang/String;[ILjava/util/List;)Ljava/util/List;

    move-result-object p1

    return-object p1
.end method
