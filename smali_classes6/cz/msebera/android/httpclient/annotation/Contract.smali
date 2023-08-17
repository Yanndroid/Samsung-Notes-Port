.class public interface abstract annotation Lcz/msebera/android/httpclient/annotation/Contract;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/lang/annotation/Annotation;


# annotations
.annotation system Ldalvik/annotation/AnnotationDefault;
    value = .subannotation Lcz/msebera/android/httpclient/annotation/Contract;
        threading = .enum Lcz/msebera/android/httpclient/annotation/ThreadingBehavior;->UNSAFE:Lcz/msebera/android/httpclient/annotation/ThreadingBehavior;
    .end subannotation
.end annotation

.annotation runtime Ljava/lang/annotation/Documented;
.end annotation

.annotation runtime Ljava/lang/annotation/Retention;
    value = .enum Ljava/lang/annotation/RetentionPolicy;->CLASS:Ljava/lang/annotation/RetentionPolicy;
.end annotation

.annotation runtime Ljava/lang/annotation/Target;
    value = {
        .enum Ljava/lang/annotation/ElementType;->TYPE:Ljava/lang/annotation/ElementType;
    }
.end annotation


# virtual methods
.method public abstract threading()Lcz/msebera/android/httpclient/annotation/ThreadingBehavior;
.end method
