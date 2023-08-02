import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:lottie/lottie.dart';

import '../../generated/assets.dart';
import '../constant/color.dart';
import 'status_request.dart';

class HandlingDataView extends StatelessWidget {
  final StatusRequest statusRequest;
  final Widget widget;
  const HandlingDataView(
      {super.key, required this.statusRequest, required this.widget});

  @override
  Widget build(BuildContext context) {
    return statusRequest == StatusRequest.loading
        ? Center(
            child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              Lottie.asset(Assets.lottieLoading, height: 250, width: 250),
              Text("loading".tr,
                  style: Theme.of(context).textTheme.displayLarge),
            ],
          ))
        : statusRequest == StatusRequest.offline
            ? Center(
                child: Column(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    Lottie.asset(Assets.lottieOffline, height: 250, width: 250),
                    Text("statusOffline".tr,
                        style: Theme.of(context).textTheme.displayLarge),
                  ],
                ),
              )
            : statusRequest == StatusRequest.serverFail
                ? Center(
                    child: Column(
                      mainAxisAlignment: MainAxisAlignment.center,
                      children: [
                        Lottie.asset(Assets.lottieServerError,
                            height: 250, width: 250),
                        Text("statusServer".tr,
                            style: Theme.of(context)
                                .textTheme
                                .displayLarge!
                                .copyWith(color: AppColor.primaryColor)),
                      ],
                    ),
                  )
                : statusRequest == StatusRequest.failed
                    ? Center(
                        child: Column(
                          mainAxisAlignment: MainAxisAlignment.center,
                          children: [
                            Lottie.asset(Assets.lottieNoData,
                                height: 250, width: 250, repeat: false),
                            Text("statusFailed".tr,
                                style:
                                    Theme.of(context).textTheme.displayLarge),
                          ],
                        ),
                      )
                    : widget;
  }
}

class HandlingDataRequest extends StatelessWidget {
  final StatusRequest statusRequest;
  final Widget widget;
  const HandlingDataRequest(
      {super.key, required this.statusRequest, required this.widget});

  @override
  Widget build(BuildContext context) {
    return statusRequest == StatusRequest.loading
        ? Center(
            child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              Lottie.asset(Assets.lottieLoading, height: 250, width: 250),
              Text("loading".tr,
                  style: Theme.of(context).textTheme.displayLarge),
            ],
          ))
        : statusRequest == StatusRequest.offline
            ? Center(
                child: Column(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    Lottie.asset(Assets.lottieOffline, height: 250, width: 250),
                    Text("statusOffline".tr,
                        style: Theme.of(context).textTheme.displayLarge),
                  ],
                ),
              )
            : statusRequest == StatusRequest.serverFail
                ? Center(
                    child: Column(
                      mainAxisAlignment: MainAxisAlignment.center,
                      children: [
                        Lottie.asset(Assets.lottieServerError,
                            height: 250, width: 250),
                        Text("statusServer".tr,
                            style: Theme.of(context)
                                .textTheme
                                .displayLarge!
                                .copyWith(color: AppColor.primaryColor)),
                      ],
                    ),
                  )
                : widget;
  }
}
