.class public Lcom/samsung/android/support/senl/nt/app/converter/task/sub/IConvertSubTask$ConvertSubTaskParams;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcom/samsung/android/support/senl/nt/app/converter/task/sub/IConvertSubTask$IConvertParams;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/samsung/android/support/senl/nt/app/converter/task/sub/IConvertSubTask;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "ConvertSubTaskParams"
.end annotation


# instance fields
.field private mIsOrigin:Z

.field private mPathList:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>(Ljava/util/List;Z)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;Z)V"
        }
    .end annotation

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/samsung/android/support/senl/nt/app/converter/task/sub/IConvertSubTask$ConvertSubTaskParams;->mPathList:Ljava/util/List;

    iput-boolean p2, p0, Lcom/samsung/android/support/senl/nt/app/converter/task/sub/IConvertSubTask$ConvertSubTaskParams;->mIsOrigin:Z

    return-void
.end method


# virtual methods
.method public getPathList()Ljava/util/List;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    iget-object v0, p0, Lcom/samsung/android/support/senl/nt/app/converter/task/sub/IConvertSubTask$ConvertSubTaskParams;->mPathList:Ljava/util/List;

    return-object v0
.end method

.method public isOrigin()Z
    .locals 1

    iget-boolean v0, p0, Lcom/samsung/android/support/senl/nt/app/converter/task/sub/IConvertSubTask$ConvertSubTaskParams;->mIsOrigin:Z

    return v0
.end method
