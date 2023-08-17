.class public interface abstract Lkotlin/time/TimeSource$WithComparableMarks;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lkotlin/time/TimeSource;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lkotlin/time/TimeSource;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x609
    name = "WithComparableMarks"
.end annotation

.annotation build Lkotlin/SinceKotlin;
    version = "1.9"
.end annotation

.annotation build Lkotlin/WasExperimental;
    markerClass = {
        Lkotlin/time/ExperimentalTime;
    }
.end annotation


# virtual methods
.method public abstract markNow()Lkotlin/time/ComparableTimeMark;
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation
.end method
