.class public final Lio/perfmark/Tag;
.super Ljava/lang/Object;
.source "SourceFile"


# instance fields
.field public final tagId:J

.field public final tagName:Ljava/lang/String;
    .annotation runtime Ljavax/annotation/Nullable;
    .end annotation
.end field


# direct methods
.method public constructor <init>(Ljava/lang/String;J)V
    .locals 0
    .param p1    # Ljava/lang/String;
        .annotation runtime Ljavax/annotation/Nullable;
        .end annotation
    .end param

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lio/perfmark/Tag;->tagName:Ljava/lang/String;

    iput-wide p2, p0, Lio/perfmark/Tag;->tagId:J

    return-void
.end method
