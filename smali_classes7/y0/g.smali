.class public final synthetic Ly0/g;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/util/function/IntConsumer;


# instance fields
.field public final synthetic a:Lcom/samsung/android/app/notes/sync/importing/core/types/MemoLocalSync;

.field public final synthetic b:Ljava/io/File;

.field public final synthetic c:[Ljava/lang/String;

.field public final synthetic d:Ljava/io/File;


# direct methods
.method public synthetic constructor <init>(Lcom/samsung/android/app/notes/sync/importing/core/types/MemoLocalSync;Ljava/io/File;[Ljava/lang/String;Ljava/io/File;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Ly0/g;->a:Lcom/samsung/android/app/notes/sync/importing/core/types/MemoLocalSync;

    iput-object p2, p0, Ly0/g;->b:Ljava/io/File;

    iput-object p3, p0, Ly0/g;->c:[Ljava/lang/String;

    iput-object p4, p0, Ly0/g;->d:Ljava/io/File;

    return-void
.end method


# virtual methods
.method public final accept(I)V
    .locals 4

    iget-object v0, p0, Ly0/g;->a:Lcom/samsung/android/app/notes/sync/importing/core/types/MemoLocalSync;

    iget-object v1, p0, Ly0/g;->b:Ljava/io/File;

    iget-object v2, p0, Ly0/g;->c:[Ljava/lang/String;

    iget-object v3, p0, Ly0/g;->d:Ljava/io/File;

    invoke-static {v0, v1, v2, v3, p1}, Lcom/samsung/android/app/notes/sync/importing/core/types/MemoLocalSync;->a(Lcom/samsung/android/app/notes/sync/importing/core/types/MemoLocalSync;Ljava/io/File;[Ljava/lang/String;Ljava/io/File;I)V

    return-void
.end method
