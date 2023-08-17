.class public La2/a$a;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcom/samsung/android/app/notes/sync/network/networkutils/b$c;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = La2/a;->b()Ljava/util/List;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = null
.end annotation


# instance fields
.field public final synthetic a:[Ljava/lang/String;

.field public final synthetic b:La2/a;


# direct methods
.method public constructor <init>(La2/a;[Ljava/lang/String;)V
    .locals 0

    iput-object p1, p0, La2/a$a;->b:La2/a;

    iput-object p2, p0, La2/a$a;->a:[Ljava/lang/String;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public d(ILjava/lang/String;)V
    .locals 1

    iget-object p1, p0, La2/a$a;->a:[Ljava/lang/String;

    const/4 v0, 0x0

    aput-object p2, p1, v0

    return-void
.end method
