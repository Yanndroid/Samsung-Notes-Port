.class public Lcom/google/api/services/drive/Drive$Files;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/google/api/services/drive/Drive;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = "Files"
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/google/api/services/drive/Drive$Files$Watch;,
        Lcom/google/api/services/drive/Drive$Files$Update;,
        Lcom/google/api/services/drive/Drive$Files$Untrash;,
        Lcom/google/api/services/drive/Drive$Files$Trash;,
        Lcom/google/api/services/drive/Drive$Files$Touch;,
        Lcom/google/api/services/drive/Drive$Files$Patch;,
        Lcom/google/api/services/drive/Drive$Files$List;,
        Lcom/google/api/services/drive/Drive$Files$Insert;,
        Lcom/google/api/services/drive/Drive$Files$Get;,
        Lcom/google/api/services/drive/Drive$Files$GenerateIds;,
        Lcom/google/api/services/drive/Drive$Files$Export;,
        Lcom/google/api/services/drive/Drive$Files$EmptyTrash;,
        Lcom/google/api/services/drive/Drive$Files$Delete;,
        Lcom/google/api/services/drive/Drive$Files$Copy;
    }
.end annotation


# instance fields
.field public final synthetic this$0:Lcom/google/api/services/drive/Drive;


# direct methods
.method public constructor <init>(Lcom/google/api/services/drive/Drive;)V
    .locals 0

    iput-object p1, p0, Lcom/google/api/services/drive/Drive$Files;->this$0:Lcom/google/api/services/drive/Drive;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public copy(Ljava/lang/String;Lcom/google/api/services/drive/model/File;)Lcom/google/api/services/drive/Drive$Files$Copy;
    .locals 1

    new-instance v0, Lcom/google/api/services/drive/Drive$Files$Copy;

    invoke-direct {v0, p0, p1, p2}, Lcom/google/api/services/drive/Drive$Files$Copy;-><init>(Lcom/google/api/services/drive/Drive$Files;Ljava/lang/String;Lcom/google/api/services/drive/model/File;)V

    iget-object p1, p0, Lcom/google/api/services/drive/Drive$Files;->this$0:Lcom/google/api/services/drive/Drive;

    invoke-virtual {p1, v0}, Lcom/google/api/services/drive/Drive;->initialize(Lcom/google/api/client/googleapis/services/AbstractGoogleClientRequest;)V

    return-object v0
.end method

.method public delete(Ljava/lang/String;)Lcom/google/api/services/drive/Drive$Files$Delete;
    .locals 1

    new-instance v0, Lcom/google/api/services/drive/Drive$Files$Delete;

    invoke-direct {v0, p0, p1}, Lcom/google/api/services/drive/Drive$Files$Delete;-><init>(Lcom/google/api/services/drive/Drive$Files;Ljava/lang/String;)V

    iget-object p1, p0, Lcom/google/api/services/drive/Drive$Files;->this$0:Lcom/google/api/services/drive/Drive;

    invoke-virtual {p1, v0}, Lcom/google/api/services/drive/Drive;->initialize(Lcom/google/api/client/googleapis/services/AbstractGoogleClientRequest;)V

    return-object v0
.end method

.method public emptyTrash()Lcom/google/api/services/drive/Drive$Files$EmptyTrash;
    .locals 2

    new-instance v0, Lcom/google/api/services/drive/Drive$Files$EmptyTrash;

    invoke-direct {v0, p0}, Lcom/google/api/services/drive/Drive$Files$EmptyTrash;-><init>(Lcom/google/api/services/drive/Drive$Files;)V

    iget-object v1, p0, Lcom/google/api/services/drive/Drive$Files;->this$0:Lcom/google/api/services/drive/Drive;

    invoke-virtual {v1, v0}, Lcom/google/api/services/drive/Drive;->initialize(Lcom/google/api/client/googleapis/services/AbstractGoogleClientRequest;)V

    return-object v0
.end method

.method public export(Ljava/lang/String;Ljava/lang/String;)Lcom/google/api/services/drive/Drive$Files$Export;
    .locals 1

    new-instance v0, Lcom/google/api/services/drive/Drive$Files$Export;

    invoke-direct {v0, p0, p1, p2}, Lcom/google/api/services/drive/Drive$Files$Export;-><init>(Lcom/google/api/services/drive/Drive$Files;Ljava/lang/String;Ljava/lang/String;)V

    iget-object p1, p0, Lcom/google/api/services/drive/Drive$Files;->this$0:Lcom/google/api/services/drive/Drive;

    invoke-virtual {p1, v0}, Lcom/google/api/services/drive/Drive;->initialize(Lcom/google/api/client/googleapis/services/AbstractGoogleClientRequest;)V

    return-object v0
.end method

.method public generateIds()Lcom/google/api/services/drive/Drive$Files$GenerateIds;
    .locals 2

    new-instance v0, Lcom/google/api/services/drive/Drive$Files$GenerateIds;

    invoke-direct {v0, p0}, Lcom/google/api/services/drive/Drive$Files$GenerateIds;-><init>(Lcom/google/api/services/drive/Drive$Files;)V

    iget-object v1, p0, Lcom/google/api/services/drive/Drive$Files;->this$0:Lcom/google/api/services/drive/Drive;

    invoke-virtual {v1, v0}, Lcom/google/api/services/drive/Drive;->initialize(Lcom/google/api/client/googleapis/services/AbstractGoogleClientRequest;)V

    return-object v0
.end method

.method public get(Ljava/lang/String;)Lcom/google/api/services/drive/Drive$Files$Get;
    .locals 1

    new-instance v0, Lcom/google/api/services/drive/Drive$Files$Get;

    invoke-direct {v0, p0, p1}, Lcom/google/api/services/drive/Drive$Files$Get;-><init>(Lcom/google/api/services/drive/Drive$Files;Ljava/lang/String;)V

    iget-object p1, p0, Lcom/google/api/services/drive/Drive$Files;->this$0:Lcom/google/api/services/drive/Drive;

    invoke-virtual {p1, v0}, Lcom/google/api/services/drive/Drive;->initialize(Lcom/google/api/client/googleapis/services/AbstractGoogleClientRequest;)V

    return-object v0
.end method

.method public insert(Lcom/google/api/services/drive/model/File;)Lcom/google/api/services/drive/Drive$Files$Insert;
    .locals 1

    new-instance v0, Lcom/google/api/services/drive/Drive$Files$Insert;

    invoke-direct {v0, p0, p1}, Lcom/google/api/services/drive/Drive$Files$Insert;-><init>(Lcom/google/api/services/drive/Drive$Files;Lcom/google/api/services/drive/model/File;)V

    iget-object p1, p0, Lcom/google/api/services/drive/Drive$Files;->this$0:Lcom/google/api/services/drive/Drive;

    invoke-virtual {p1, v0}, Lcom/google/api/services/drive/Drive;->initialize(Lcom/google/api/client/googleapis/services/AbstractGoogleClientRequest;)V

    return-object v0
.end method

.method public insert(Lcom/google/api/services/drive/model/File;Lcom/google/api/client/http/AbstractInputStreamContent;)Lcom/google/api/services/drive/Drive$Files$Insert;
    .locals 1

    new-instance v0, Lcom/google/api/services/drive/Drive$Files$Insert;

    invoke-direct {v0, p0, p1, p2}, Lcom/google/api/services/drive/Drive$Files$Insert;-><init>(Lcom/google/api/services/drive/Drive$Files;Lcom/google/api/services/drive/model/File;Lcom/google/api/client/http/AbstractInputStreamContent;)V

    iget-object p1, p0, Lcom/google/api/services/drive/Drive$Files;->this$0:Lcom/google/api/services/drive/Drive;

    invoke-virtual {p1, v0}, Lcom/google/api/services/drive/Drive;->initialize(Lcom/google/api/client/googleapis/services/AbstractGoogleClientRequest;)V

    return-object v0
.end method

.method public list()Lcom/google/api/services/drive/Drive$Files$List;
    .locals 2

    new-instance v0, Lcom/google/api/services/drive/Drive$Files$List;

    invoke-direct {v0, p0}, Lcom/google/api/services/drive/Drive$Files$List;-><init>(Lcom/google/api/services/drive/Drive$Files;)V

    iget-object v1, p0, Lcom/google/api/services/drive/Drive$Files;->this$0:Lcom/google/api/services/drive/Drive;

    invoke-virtual {v1, v0}, Lcom/google/api/services/drive/Drive;->initialize(Lcom/google/api/client/googleapis/services/AbstractGoogleClientRequest;)V

    return-object v0
.end method

.method public patch(Ljava/lang/String;Lcom/google/api/services/drive/model/File;)Lcom/google/api/services/drive/Drive$Files$Patch;
    .locals 1

    new-instance v0, Lcom/google/api/services/drive/Drive$Files$Patch;

    invoke-direct {v0, p0, p1, p2}, Lcom/google/api/services/drive/Drive$Files$Patch;-><init>(Lcom/google/api/services/drive/Drive$Files;Ljava/lang/String;Lcom/google/api/services/drive/model/File;)V

    iget-object p1, p0, Lcom/google/api/services/drive/Drive$Files;->this$0:Lcom/google/api/services/drive/Drive;

    invoke-virtual {p1, v0}, Lcom/google/api/services/drive/Drive;->initialize(Lcom/google/api/client/googleapis/services/AbstractGoogleClientRequest;)V

    return-object v0
.end method

.method public touch(Ljava/lang/String;)Lcom/google/api/services/drive/Drive$Files$Touch;
    .locals 1

    new-instance v0, Lcom/google/api/services/drive/Drive$Files$Touch;

    invoke-direct {v0, p0, p1}, Lcom/google/api/services/drive/Drive$Files$Touch;-><init>(Lcom/google/api/services/drive/Drive$Files;Ljava/lang/String;)V

    iget-object p1, p0, Lcom/google/api/services/drive/Drive$Files;->this$0:Lcom/google/api/services/drive/Drive;

    invoke-virtual {p1, v0}, Lcom/google/api/services/drive/Drive;->initialize(Lcom/google/api/client/googleapis/services/AbstractGoogleClientRequest;)V

    return-object v0
.end method

.method public trash(Ljava/lang/String;)Lcom/google/api/services/drive/Drive$Files$Trash;
    .locals 1

    new-instance v0, Lcom/google/api/services/drive/Drive$Files$Trash;

    invoke-direct {v0, p0, p1}, Lcom/google/api/services/drive/Drive$Files$Trash;-><init>(Lcom/google/api/services/drive/Drive$Files;Ljava/lang/String;)V

    iget-object p1, p0, Lcom/google/api/services/drive/Drive$Files;->this$0:Lcom/google/api/services/drive/Drive;

    invoke-virtual {p1, v0}, Lcom/google/api/services/drive/Drive;->initialize(Lcom/google/api/client/googleapis/services/AbstractGoogleClientRequest;)V

    return-object v0
.end method

.method public untrash(Ljava/lang/String;)Lcom/google/api/services/drive/Drive$Files$Untrash;
    .locals 1

    new-instance v0, Lcom/google/api/services/drive/Drive$Files$Untrash;

    invoke-direct {v0, p0, p1}, Lcom/google/api/services/drive/Drive$Files$Untrash;-><init>(Lcom/google/api/services/drive/Drive$Files;Ljava/lang/String;)V

    iget-object p1, p0, Lcom/google/api/services/drive/Drive$Files;->this$0:Lcom/google/api/services/drive/Drive;

    invoke-virtual {p1, v0}, Lcom/google/api/services/drive/Drive;->initialize(Lcom/google/api/client/googleapis/services/AbstractGoogleClientRequest;)V

    return-object v0
.end method

.method public update(Ljava/lang/String;Lcom/google/api/services/drive/model/File;)Lcom/google/api/services/drive/Drive$Files$Update;
    .locals 1

    new-instance v0, Lcom/google/api/services/drive/Drive$Files$Update;

    invoke-direct {v0, p0, p1, p2}, Lcom/google/api/services/drive/Drive$Files$Update;-><init>(Lcom/google/api/services/drive/Drive$Files;Ljava/lang/String;Lcom/google/api/services/drive/model/File;)V

    iget-object p1, p0, Lcom/google/api/services/drive/Drive$Files;->this$0:Lcom/google/api/services/drive/Drive;

    invoke-virtual {p1, v0}, Lcom/google/api/services/drive/Drive;->initialize(Lcom/google/api/client/googleapis/services/AbstractGoogleClientRequest;)V

    return-object v0
.end method

.method public update(Ljava/lang/String;Lcom/google/api/services/drive/model/File;Lcom/google/api/client/http/AbstractInputStreamContent;)Lcom/google/api/services/drive/Drive$Files$Update;
    .locals 1

    new-instance v0, Lcom/google/api/services/drive/Drive$Files$Update;

    invoke-direct {v0, p0, p1, p2, p3}, Lcom/google/api/services/drive/Drive$Files$Update;-><init>(Lcom/google/api/services/drive/Drive$Files;Ljava/lang/String;Lcom/google/api/services/drive/model/File;Lcom/google/api/client/http/AbstractInputStreamContent;)V

    iget-object p1, p0, Lcom/google/api/services/drive/Drive$Files;->this$0:Lcom/google/api/services/drive/Drive;

    invoke-virtual {p1, v0}, Lcom/google/api/services/drive/Drive;->initialize(Lcom/google/api/client/googleapis/services/AbstractGoogleClientRequest;)V

    return-object v0
.end method

.method public watch(Ljava/lang/String;Lcom/google/api/services/drive/model/Channel;)Lcom/google/api/services/drive/Drive$Files$Watch;
    .locals 1

    new-instance v0, Lcom/google/api/services/drive/Drive$Files$Watch;

    invoke-direct {v0, p0, p1, p2}, Lcom/google/api/services/drive/Drive$Files$Watch;-><init>(Lcom/google/api/services/drive/Drive$Files;Ljava/lang/String;Lcom/google/api/services/drive/model/Channel;)V

    iget-object p1, p0, Lcom/google/api/services/drive/Drive$Files;->this$0:Lcom/google/api/services/drive/Drive;

    invoke-virtual {p1, v0}, Lcom/google/api/services/drive/Drive;->initialize(Lcom/google/api/client/googleapis/services/AbstractGoogleClientRequest;)V

    return-object v0
.end method
