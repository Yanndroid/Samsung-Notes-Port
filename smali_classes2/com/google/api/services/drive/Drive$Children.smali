.class public Lcom/google/api/services/drive/Drive$Children;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/google/api/services/drive/Drive;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = "Children"
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/google/api/services/drive/Drive$Children$List;,
        Lcom/google/api/services/drive/Drive$Children$Insert;,
        Lcom/google/api/services/drive/Drive$Children$Get;,
        Lcom/google/api/services/drive/Drive$Children$Delete;
    }
.end annotation


# instance fields
.field public final synthetic this$0:Lcom/google/api/services/drive/Drive;


# direct methods
.method public constructor <init>(Lcom/google/api/services/drive/Drive;)V
    .locals 0

    iput-object p1, p0, Lcom/google/api/services/drive/Drive$Children;->this$0:Lcom/google/api/services/drive/Drive;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public delete(Ljava/lang/String;Ljava/lang/String;)Lcom/google/api/services/drive/Drive$Children$Delete;
    .locals 1

    new-instance v0, Lcom/google/api/services/drive/Drive$Children$Delete;

    invoke-direct {v0, p0, p1, p2}, Lcom/google/api/services/drive/Drive$Children$Delete;-><init>(Lcom/google/api/services/drive/Drive$Children;Ljava/lang/String;Ljava/lang/String;)V

    iget-object p1, p0, Lcom/google/api/services/drive/Drive$Children;->this$0:Lcom/google/api/services/drive/Drive;

    invoke-virtual {p1, v0}, Lcom/google/api/services/drive/Drive;->initialize(Lcom/google/api/client/googleapis/services/AbstractGoogleClientRequest;)V

    return-object v0
.end method

.method public get(Ljava/lang/String;Ljava/lang/String;)Lcom/google/api/services/drive/Drive$Children$Get;
    .locals 1

    new-instance v0, Lcom/google/api/services/drive/Drive$Children$Get;

    invoke-direct {v0, p0, p1, p2}, Lcom/google/api/services/drive/Drive$Children$Get;-><init>(Lcom/google/api/services/drive/Drive$Children;Ljava/lang/String;Ljava/lang/String;)V

    iget-object p1, p0, Lcom/google/api/services/drive/Drive$Children;->this$0:Lcom/google/api/services/drive/Drive;

    invoke-virtual {p1, v0}, Lcom/google/api/services/drive/Drive;->initialize(Lcom/google/api/client/googleapis/services/AbstractGoogleClientRequest;)V

    return-object v0
.end method

.method public insert(Ljava/lang/String;Lcom/google/api/services/drive/model/ChildReference;)Lcom/google/api/services/drive/Drive$Children$Insert;
    .locals 1

    new-instance v0, Lcom/google/api/services/drive/Drive$Children$Insert;

    invoke-direct {v0, p0, p1, p2}, Lcom/google/api/services/drive/Drive$Children$Insert;-><init>(Lcom/google/api/services/drive/Drive$Children;Ljava/lang/String;Lcom/google/api/services/drive/model/ChildReference;)V

    iget-object p1, p0, Lcom/google/api/services/drive/Drive$Children;->this$0:Lcom/google/api/services/drive/Drive;

    invoke-virtual {p1, v0}, Lcom/google/api/services/drive/Drive;->initialize(Lcom/google/api/client/googleapis/services/AbstractGoogleClientRequest;)V

    return-object v0
.end method

.method public list(Ljava/lang/String;)Lcom/google/api/services/drive/Drive$Children$List;
    .locals 1

    new-instance v0, Lcom/google/api/services/drive/Drive$Children$List;

    invoke-direct {v0, p0, p1}, Lcom/google/api/services/drive/Drive$Children$List;-><init>(Lcom/google/api/services/drive/Drive$Children;Ljava/lang/String;)V

    iget-object p1, p0, Lcom/google/api/services/drive/Drive$Children;->this$0:Lcom/google/api/services/drive/Drive;

    invoke-virtual {p1, v0}, Lcom/google/api/services/drive/Drive;->initialize(Lcom/google/api/client/googleapis/services/AbstractGoogleClientRequest;)V

    return-object v0
.end method
