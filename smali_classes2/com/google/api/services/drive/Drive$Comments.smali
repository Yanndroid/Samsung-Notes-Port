.class public Lcom/google/api/services/drive/Drive$Comments;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/google/api/services/drive/Drive;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = "Comments"
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/google/api/services/drive/Drive$Comments$Update;,
        Lcom/google/api/services/drive/Drive$Comments$Patch;,
        Lcom/google/api/services/drive/Drive$Comments$List;,
        Lcom/google/api/services/drive/Drive$Comments$Insert;,
        Lcom/google/api/services/drive/Drive$Comments$Get;,
        Lcom/google/api/services/drive/Drive$Comments$Delete;
    }
.end annotation


# instance fields
.field public final synthetic this$0:Lcom/google/api/services/drive/Drive;


# direct methods
.method public constructor <init>(Lcom/google/api/services/drive/Drive;)V
    .locals 0

    iput-object p1, p0, Lcom/google/api/services/drive/Drive$Comments;->this$0:Lcom/google/api/services/drive/Drive;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public delete(Ljava/lang/String;Ljava/lang/String;)Lcom/google/api/services/drive/Drive$Comments$Delete;
    .locals 1

    new-instance v0, Lcom/google/api/services/drive/Drive$Comments$Delete;

    invoke-direct {v0, p0, p1, p2}, Lcom/google/api/services/drive/Drive$Comments$Delete;-><init>(Lcom/google/api/services/drive/Drive$Comments;Ljava/lang/String;Ljava/lang/String;)V

    iget-object p1, p0, Lcom/google/api/services/drive/Drive$Comments;->this$0:Lcom/google/api/services/drive/Drive;

    invoke-virtual {p1, v0}, Lcom/google/api/services/drive/Drive;->initialize(Lcom/google/api/client/googleapis/services/AbstractGoogleClientRequest;)V

    return-object v0
.end method

.method public get(Ljava/lang/String;Ljava/lang/String;)Lcom/google/api/services/drive/Drive$Comments$Get;
    .locals 1

    new-instance v0, Lcom/google/api/services/drive/Drive$Comments$Get;

    invoke-direct {v0, p0, p1, p2}, Lcom/google/api/services/drive/Drive$Comments$Get;-><init>(Lcom/google/api/services/drive/Drive$Comments;Ljava/lang/String;Ljava/lang/String;)V

    iget-object p1, p0, Lcom/google/api/services/drive/Drive$Comments;->this$0:Lcom/google/api/services/drive/Drive;

    invoke-virtual {p1, v0}, Lcom/google/api/services/drive/Drive;->initialize(Lcom/google/api/client/googleapis/services/AbstractGoogleClientRequest;)V

    return-object v0
.end method

.method public insert(Ljava/lang/String;Lcom/google/api/services/drive/model/Comment;)Lcom/google/api/services/drive/Drive$Comments$Insert;
    .locals 1

    new-instance v0, Lcom/google/api/services/drive/Drive$Comments$Insert;

    invoke-direct {v0, p0, p1, p2}, Lcom/google/api/services/drive/Drive$Comments$Insert;-><init>(Lcom/google/api/services/drive/Drive$Comments;Ljava/lang/String;Lcom/google/api/services/drive/model/Comment;)V

    iget-object p1, p0, Lcom/google/api/services/drive/Drive$Comments;->this$0:Lcom/google/api/services/drive/Drive;

    invoke-virtual {p1, v0}, Lcom/google/api/services/drive/Drive;->initialize(Lcom/google/api/client/googleapis/services/AbstractGoogleClientRequest;)V

    return-object v0
.end method

.method public list(Ljava/lang/String;)Lcom/google/api/services/drive/Drive$Comments$List;
    .locals 1

    new-instance v0, Lcom/google/api/services/drive/Drive$Comments$List;

    invoke-direct {v0, p0, p1}, Lcom/google/api/services/drive/Drive$Comments$List;-><init>(Lcom/google/api/services/drive/Drive$Comments;Ljava/lang/String;)V

    iget-object p1, p0, Lcom/google/api/services/drive/Drive$Comments;->this$0:Lcom/google/api/services/drive/Drive;

    invoke-virtual {p1, v0}, Lcom/google/api/services/drive/Drive;->initialize(Lcom/google/api/client/googleapis/services/AbstractGoogleClientRequest;)V

    return-object v0
.end method

.method public patch(Ljava/lang/String;Ljava/lang/String;Lcom/google/api/services/drive/model/Comment;)Lcom/google/api/services/drive/Drive$Comments$Patch;
    .locals 1

    new-instance v0, Lcom/google/api/services/drive/Drive$Comments$Patch;

    invoke-direct {v0, p0, p1, p2, p3}, Lcom/google/api/services/drive/Drive$Comments$Patch;-><init>(Lcom/google/api/services/drive/Drive$Comments;Ljava/lang/String;Ljava/lang/String;Lcom/google/api/services/drive/model/Comment;)V

    iget-object p1, p0, Lcom/google/api/services/drive/Drive$Comments;->this$0:Lcom/google/api/services/drive/Drive;

    invoke-virtual {p1, v0}, Lcom/google/api/services/drive/Drive;->initialize(Lcom/google/api/client/googleapis/services/AbstractGoogleClientRequest;)V

    return-object v0
.end method

.method public update(Ljava/lang/String;Ljava/lang/String;Lcom/google/api/services/drive/model/Comment;)Lcom/google/api/services/drive/Drive$Comments$Update;
    .locals 1

    new-instance v0, Lcom/google/api/services/drive/Drive$Comments$Update;

    invoke-direct {v0, p0, p1, p2, p3}, Lcom/google/api/services/drive/Drive$Comments$Update;-><init>(Lcom/google/api/services/drive/Drive$Comments;Ljava/lang/String;Ljava/lang/String;Lcom/google/api/services/drive/model/Comment;)V

    iget-object p1, p0, Lcom/google/api/services/drive/Drive$Comments;->this$0:Lcom/google/api/services/drive/Drive;

    invoke-virtual {p1, v0}, Lcom/google/api/services/drive/Drive;->initialize(Lcom/google/api/client/googleapis/services/AbstractGoogleClientRequest;)V

    return-object v0
.end method
