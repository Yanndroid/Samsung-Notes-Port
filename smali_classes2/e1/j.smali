.class public Le1/j;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Le1/j$a;
    }
.end annotation


# instance fields
.field public a:Le1/j$a;


# direct methods
.method public constructor <init>()V
    .locals 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    new-instance v0, Le1/j$a;

    invoke-direct {v0}, Le1/j$a;-><init>()V

    iput-object v0, p0, Le1/j;->a:Le1/j$a;

    return-void
.end method
