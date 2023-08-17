.class public final Lio/perfmark/Link;
.super Ljava/lang/Object;
.source "SourceFile"


# instance fields
.field public final linkId:J


# direct methods
.method public constructor <init>(J)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-wide p1, p0, Lio/perfmark/Link;->linkId:J

    return-void
.end method


# virtual methods
.method public link()V
    .locals 0
    .annotation build Lcom/google/errorprone/annotations/DoNotCall;
    .end annotation

    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    return-void
.end method
